class Nudge < Formula
  desc "A coding agent for your terminal and on the go"
  homepage "https://github.com/nuudge/nudge"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nuudge/nudge/releases/download/v0.2.1/nudge-aarch64-apple-darwin"
      sha256 "d9bd532cf59cb77143556ac31ad6cb035dae91471dec5f154279c2d67b922b71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nuudge/nudge/releases/download/v0.2.1/nudge-x86_64-unknown-linux-gnu"
      sha256 "e754c81a323e26f4428337e7b67f30a4ebbaddba4a2ee66b247621c44f3f6a3e"
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
    assert_match "0.2.1", shell_output("#{bin}/nudge --version")
  end
end
