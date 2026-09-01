class Nudge < Formula
  desc "A coding agent for your terminal and on the go"
  homepage "https://github.com/nuudge/nudge"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nuudge/nudge/releases/download/v0.1.5/nudge-aarch64-apple-darwin"
      sha256 "91c08e08e1ccee3825820fc1877fe65eba47c4fc920e603e667a730b0c7ae664"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nuudge/nudge/releases/download/v0.1.5/nudge-x86_64-unknown-linux-gnu"
      sha256 "338d054b3300460cedfcc22ac3cf478149910676b41f7473fdc5fff3d14177ba"
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
    assert_match "0.1.5", shell_output("#{bin}/nudge --version")
  end
end
