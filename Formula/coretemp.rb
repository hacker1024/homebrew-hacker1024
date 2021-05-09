class Coretemp < Formula
  desc "Outputs current CPU core and package temperatures on macOS"
  homepage "https://github.com/hacker1024/coretemp"
  url "https://github.com/hacker1024/coretemp/archive/v1.1.1.tar.gz"
  sha256 "e643db577759744a16c1e503f2ff4a399188f95c620c407602beff6cf2769ce5"
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
