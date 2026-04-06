# Homebrew formula for SSG - Static Site Generator
# Install: brew install spagu/tap/ssg
# Or: brew tap spagu/tap && brew install ssg

class Ssg < Formula
  desc "Fast static site generator written in Go"
  homepage "https://github.com/spagu/ssg"
  version "1.7.8"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.8/ssg-darwin-arm64.tar.gz"
      sha256 "7a0f426afcca1a68f5a0650ff01da0225d8f33e604bc8945b0aabb4f09a6af3f"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.8/ssg-darwin-amd64.tar.gz"
      sha256 "c5aa9abb8d1c059261efd2ef36c1f30f22367adb8a9d17b6a6ebfa7f4f209349"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.8/ssg-linux-arm64.tar.gz"
      sha256 "a104c44f7a5068952ed33e919350bc6dc4134ef2d4fdda0092f7a375e285c7e7"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.8/ssg-linux-amd64.tar.gz"
      sha256 "164a162c32cdf013afd8ccffd173dfb76aafed58bceeb63a9cde739f27351b54"
    end
  end

  def install
    bin.install "ssg"
  end

  test do
    system "#{bin}/ssg", "--help"
  end
end
