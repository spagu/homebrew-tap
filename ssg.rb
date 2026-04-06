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
      sha256 "c5d36dd7d7e78a9ce40b37aec46306a5bcc51a484cb86efccff9ac6bcb8b56f6"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.10/ssg-1.7.10-darwin-amd64.tar.gz"
      sha256 "8dc6f3d6d568245db3c162c190cfb542f86c8382beda66de96d48418eb082a44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.10/ssg-1.7.10-linux-arm64.tar.gz"
      sha256 "4184cff9977ae619cda0cf4442832ba578d7f46db0ce1588dcd98f2609a6933f"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.10/ssg-1.7.10-linux-amd64.tar.gz"
      sha256 "a71e3204005d32162435938291ccef8c66770b06deaa229f0b07b374b24d080b"
    end
  end

  def install
    bin.install "ssg"
  end

  test do
    system "#{bin}/ssg", "--help"
  end
end
