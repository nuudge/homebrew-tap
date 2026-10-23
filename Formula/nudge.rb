class Nudge < Formula
  desc "A coding agent for your terminal and on the go"
  homepage "https://github.com/nuudge/nudge"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nuudge/nudge/releases/download/v0.3.0/nudge-aarch64-apple-darwin"
      sha256 "eefae658d5fa66ce89351f816334f4b01b27518557663cd71322ae833cd496cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nuudge/nudge/releases/download/v0.3.0/nudge-x86_64-unknown-linux-gnu"
      sha256 "68502a05e75847d8cb39662dd0d19c83ec2619f61dd58fbc4c0dc570380d5bc2"
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
    assert_match "0.3.0", shell_output("#{bin}/nudge --version")
  end
end
