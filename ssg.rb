# Homebrew formula for SSG - Static Site Generator
# Install: brew install spagu/tap/ssg
# Or: brew tap spagu/tap && brew install ssg

class Ssg < Formula
  desc "Fast static site generator written in Go"
  homepage "https://github.com/spagu/ssg"
  version "1.7.12"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.12/ssg-darwin-arm64.tar.gz"
      sha256 "071292a699414e4df3efa87d7162efdc7918d97348c51dbe5d535f0517e96fa1"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.12/ssg-darwin-amd64.tar.gz"
      sha256 "d4a17d89b9548c19c3733eabddee756e8b6b00b76d6a0dca973d0358cff54ce5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.12/ssg-linux-arm64.tar.gz"
      sha256 "437e577939e261ce261e8f2659016ea471eaa0cf1b92e8b8f9d25e1aeb5eab9c"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.12/ssg-linux-amd64.tar.gz"
      sha256 "b9eb0d767f04340547bba15a769a10598c4eea2ab3ebf6a711abec6d065313b6"
    end
  end

  def install
    bin.install "ssg"
  end

  test do
    system "#{bin}/ssg", "--help"
  end
end
