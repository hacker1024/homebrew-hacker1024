class Coretemp < Formula
  desc "Outputs current CPU core and package temperatures on macOS"
  homepage "https://github.com/hacker1024/coretemp"
  url "https://github.com/hacker1024/coretemp/archive/v1.1.tar.gz"
  sha256 "f8d8739c45ccf62f12f064cc37bfc0f4a10a8039cfdaec93ed564a12d136ae0b"
  license "GPL-2.0-or-later"

  def install
    system "make"
    bin.install "coretemp"
  end

  test do
    system bin/"coretemp"
    system bin/"coretemp", "-c0"
    system bin/"coretemp", "-p"
  end
end
