require "formula"

class Re2c < Formula
  homepage "https://github.com/bproctor/re2c"
  url "https://github.com/bproctor/re2c/archive/master.zip"
  sha1 "aa297929b1ee7d11b04b60f21661d910a16bdd66"
  version "1.3.5"

  bottle do
    cellar :any
    sha1 "aa297929b1ee7d11b04b60f21661d910a16bdd66" => :yosemite
    sha1 "aa297929b1ee7d11b04b60f21661d910a16bdd66" => :mavericks
    sha1 "aa297929b1ee7d11b04b60f21661d910a16bdd66" => :mountain_lion
  end

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
