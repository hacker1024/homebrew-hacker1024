class Coretemp < Formula
  desc "Outputs current CPU core and package temperatures on macOS"
  homepage "https://github.com/hacker1024/coretemp"
  url "https://github.com/hacker1024/coretemp/archive/v1.1.1.tar.gz"
  sha256 "ac5a4b7f04620e8fbe57f8087668d2ae55848cf5e32c0e2cc454efcf58f911f6"
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
