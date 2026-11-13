class Nudge < Formula
  desc "A coding agent for your terminal and on the go"
  homepage "https://github.com/nuudge/nudge"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nuudge/nudge/releases/download/v0.5.1/nudge-aarch64-apple-darwin"
      sha256 "8ef30ddcb8242e2e12621dcc892b5a5f11c460aa05a4059352dfefc8137bb7ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nuudge/nudge/releases/download/v0.5.1/nudge-x86_64-unknown-linux-gnu"
      sha256 "7de529ba50337374b081d289b86dd050bffee6259bf964a8e3c3f4821863c3f2"
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
    assert_match "0.5.1", shell_output("#{bin}/nudge --version")
  end
end
