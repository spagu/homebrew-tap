# Homebrew formula for SSG - Static Site Generator
# Install: brew install spagu/tap/ssg
# Or: brew tap spagu/tap && brew install ssg

class Ssg < Formula
  desc "Fast static site generator written in Go"
  homepage "https://github.com/spagu/ssg"
  version "1.7.13"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.13/ssg-darwin-arm64.tar.gz"
      sha256 "66b684d1eddd01729021fe4cdaf56ee4ad306b597c1a9a8a8044114c20bb2dc2"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.13/ssg-darwin-amd64.tar.gz"
      sha256 "b0356d426630f86e7b0bd5c477f0739e5e96a3bb0325b55701c16283c481291e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.13/ssg-linux-arm64.tar.gz"
      sha256 "684514b4d075cccfc35d19db973615be6dc1f7e86a7d2481c9c95813d13e5b47"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.13/ssg-linux-amd64.tar.gz"
      sha256 "44951437e231b88c55cddbf783522d22bb0d5bdad6a9febd9dec93f63cafd032"
    end
  end

  def install
    bin.install "ssg"
  end

  test do
    system "#{bin}/ssg", "--help"
  end
end
