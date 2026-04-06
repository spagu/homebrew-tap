# Homebrew formula for SSG - Static Site Generator
# Install: brew install spagu/tap/ssg
# Or: brew tap spagu/tap && brew install ssg

class Ssg < Formula
  desc "Fast static site generator written in Go"
  homepage "https://github.com/spagu/ssg"
  version "1.7.9"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.9/ssg-darwin-arm64.tar.gz"
      sha256 "ce8f4074d3736af730d43c73394072a8bb22fdb45e8272c0447a89331d11fd1b"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.9/ssg-darwin-amd64.tar.gz"
      sha256 "28847986018e8806c8bf8a44dd6bb720dac2b5d5609140deb5d5622ce4f66923"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.9/ssg-linux-arm64.tar.gz"
      sha256 "b1abf0827c8da36a06c2c9d3ca207eb82b9cefd2db93d4cb6f57988afc6395d1"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.9/ssg-linux-amd64.tar.gz"
      sha256 "35e2b2c1e6562f3c2763713606730d4b4ee954c2a9914f82084dd103f216b3c0"
    end
  end

  def install
    bin.install "ssg"
  end

  test do
    system "#{bin}/ssg", "--help"
  end
end
