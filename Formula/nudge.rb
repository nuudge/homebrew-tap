class Nudge < Formula
  desc "A coding agent for your terminal and on the go"
  homepage "https://github.com/nuudge/nudge"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nuudge/nudge/releases/download/v0.4.1/nudge-aarch64-apple-darwin"
      sha256 "b1678d83134abf2b369e9e9ea97901075b53d629bc7e9eb8356bd63fe8658509"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nuudge/nudge/releases/download/v0.4.1/nudge-x86_64-unknown-linux-gnu"
      sha256 "ab7509fa0bd72632b733c00575cceecd850731016ee8c00fbd0bde1c90aada13"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    # The release asset is a bare binary named after its target triple;
    # rename it to plain "nudge" on install.
    bin.install Dir["nudge-*"].first => "nudge"
  end

  test do
    assert_match "0.4.1", shell_output("#{bin}/nudge --version")
  end
end
