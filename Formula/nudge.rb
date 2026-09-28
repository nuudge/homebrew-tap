class Nudge < Formula
  desc "A coding agent for your terminal and on the go"
  homepage "https://github.com/nuudge/nudge"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nuudge/nudge/releases/download/v0.2.0/nudge-aarch64-apple-darwin"
      sha256 "82ef193c51935d9cead965eecaa08cde76ef37e88ebb0c9bd827f5bb2fc812eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nuudge/nudge/releases/download/v0.2.0/nudge-x86_64-unknown-linux-gnu"
      sha256 "22a3ae41fa46c9e528a39dbe8e2d84bfecb7afe1315f8b3aa0131fa8069fb4b8"
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
    assert_match "0.2.0", shell_output("#{bin}/nudge --version")
  end
end
