# Homebrew formula for SSG - Static Site Generator
# Install: brew install spagu/tap/ssg
# Or: brew tap spagu/tap && brew install ssg

class Ssg < Formula
  desc "Fast static site generator written in Go"
  homepage "https://github.com/spagu/ssg"
  version "1.7.14"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.14/ssg-darwin-arm64.tar.gz"
      sha256 "22b2c713bd31ce208b9f710d1ed13d476bef713c08c1b21a0cf97f3b7e048631"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.14/ssg-darwin-amd64.tar.gz"
      sha256 "62acff0ba575ac34cbe9df35ce9b457a66169d01ff8a87cd035b17ae3f6f9b94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.14/ssg-linux-arm64.tar.gz"
      sha256 "3c6f70ceaa3b1dce4e6156782a7f6f0769b93ed61690c6c8a8a2357463906032"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.14/ssg-linux-amd64.tar.gz"
      sha256 "1a3c72c7ecc166ecd9857c3354c32ad536f008a823e3b3367e3a1c64e50d56f0"
    end
  end

  def install
    bin.install "ssg"
  end

  test do
    system "#{bin}/ssg", "--help"
  end
end
