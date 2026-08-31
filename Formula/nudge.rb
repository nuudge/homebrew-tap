class Nudge < Formula
  desc "A coding agent for your terminal and on the go"
  homepage "https://github.com/nuudge/nudge"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nuudge/nudge/releases/download/v0.1.4/nudge-aarch64-apple-darwin"
      sha256 "1313abdf8b3a42d075a29191d4bdf715d9cc104083b30069950e83d5b243f8ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nuudge/nudge/releases/download/v0.1.4/nudge-x86_64-unknown-linux-gnu"
      sha256 "37d2059ec12b1d86aa1a093f2939490574e4dc45c244feab2ab4ac20311d2517"
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
    assert_match "0.1.4", shell_output("#{bin}/nudge --version")
  end
end
