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
      sha256 "9170c946c51604ad81b4337ce953a6e9e7f5a811fae8874a4e9af618e3a454ea"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.10/ssg-1.7.10-darwin-amd64.tar.gz"
      sha256 "9d1ff627b0d827c6b5569dcb6861972bd7ab94b6471354287037e61f78792e02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spagu/ssg/releases/download/v1.7.10/ssg-1.7.10-linux-arm64.tar.gz"
      sha256 "f7e8475d75bd08a19618da98be37129d063569949a965f7e1013b543e27fcf8e"
    end
    on_intel do
      url "https://github.com/spagu/ssg/releases/download/v1.7.10/ssg-1.7.10-linux-amd64.tar.gz"
      sha256 "b94550e9616c425ccebd9f91c9e2e539c5274ca9e78f18281ded5eab111ec487"
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
