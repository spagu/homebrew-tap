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
      sha256 "512a0d6d898cf8f568402fab620b6cd230b5bd23d9c82cacc8cf00db9738f7ec"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.10/ssg-1.7.10-darwin-amd64.tar.gz"
      sha256 "e7180411d7172502aedb901dafd5a1fbb4f48f9f4be62698af00a6d8507f848a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.10/ssg-1.7.10-linux-arm64.tar.gz"
      sha256 "3e88a9d3ab9cc05e0f7e3dab4a56da4105f52a341cfab280113dd6f8f54b23c5"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.10/ssg-1.7.10-linux-amd64.tar.gz"
      sha256 "0925b03ec204513359a505055751c70187ad4b1ad0bc38f3ad858868af1181b9"
    end
  end

  def install
    bin.install "ssg-darwin-arm64" => "ssg" if OS.mac? && Hardware::CPU.arm?
    bin.install "ssg-darwin-amd64" => "ssg" if OS.mac? && Hardware::CPU.intel?
    bin.install "ssg-linux-arm64" => "ssg" if OS.linux? && Hardware::CPU.arm?
    bin.install "ssg-linux-amd64" => "ssg" if OS.linux? && Hardware::CPU.intel?
  end

  test do
    system "#{bin}/ssg", "--help"
  end
end
