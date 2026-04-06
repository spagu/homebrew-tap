# Homebrew formula for SSG - Static Site Generator
# Install: brew install spagu/tap/ssg
# Or: brew tap spagu/tap && brew install ssg

class Ssg < Formula
  desc "Fast static site generator written in Go"
  homepage "https://github.com/spagu/ssg"
  version "1.7.10"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.10/ssg-1.7.10-darwin-arm64.tar.gz"
      sha256 "45e7adf1e7731e8ff2b68a69a298fa6668a504c944afc9237b036a09ac1bded8"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.10/ssg-1.7.10-darwin-amd64.tar.gz"
      sha256 "e466978e07521e6bbb7fdda8b6348d1440c1ecd5537ea8f3d465453a2080b028"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.10/ssg-1.7.10-linux-arm64.tar.gz"
      sha256 "3edba0f34c34050fbb1aec8302f1759ee60c72c8e1353efcb4668224969048a5"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.10/ssg-1.7.10-linux-amd64.tar.gz"
      sha256 "a92c4b9a21aa3d2ea11f37f2942462a5f5268b3fee27b2f55ee17693a9087a6e"
    end
  end

  def install
    bin.install "ssg"
  end

  test do
    system "#{bin}/ssg", "--help"
  end
end
