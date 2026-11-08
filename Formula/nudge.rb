class Nudge < Formula
  desc "A coding agent for your terminal and on the go"
  homepage "https://github.com/nuudge/nudge"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nuudge/nudge/releases/download/v0.5.0/nudge-aarch64-apple-darwin"
      sha256 "4a0452bb5adeac501ff2fccd0bb1547faa10481154b314377f0f916166afe01d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nuudge/nudge/releases/download/v0.5.0/nudge-x86_64-unknown-linux-gnu"
      sha256 "d088594c54e5baec70a7f1958a3eb763a33d1ccb6dc402999dbfb29e820b2e81"
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
    assert_match "0.5.0", shell_output("#{bin}/nudge --version")
  end
end
