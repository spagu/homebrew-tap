# Homebrew formula for SSG - Static Site Generator
# Install: brew install spagu/tap/ssg
# Or: brew tap spagu/tap && brew install ssg

class Ssg < Formula
  desc "Fast static site generator written in Go"
  homepage "https://github.com/spagu/ssg"
  version "1.7.7"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.7/ssg-darwin-arm64.tar.gz"
      sha256 "631d17cee69ffe0fa082b77b8e25819f6d547f05465c16823263e67848e3c471"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.7/ssg-darwin-amd64.tar.gz"
      sha256 "9d4c453761dd638b9b426fe65a71fd1be9e855c482e16dd2ca06db70733a8723"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.7/ssg-linux-arm64.tar.gz"
      sha256 "948ff1370c15b3c7f57661c748b9737a5b9c3bb016128d29c951ba33cae6c125"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.7/ssg-linux-amd64.tar.gz"
      sha256 "a92f86cecbe0388a6d8e6d0c5a008f59b9cf53e33632fed121aa0705453de890"
    end
  end

  def install
    bin.install "ssg"
  end

  test do
    system "#{bin}/ssg", "--help"
  end
end
