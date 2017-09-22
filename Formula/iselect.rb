class Iselect < Formula
  desc "Interactive Terminal Selection"
  homepage "http://www.ossp.org/pkg/tool/iselect/"
  url "ftp://ftp.ossp.org/pkg/tool/iselect/iselect-1.4.0.tar.gz"
  sha256 "5b75fc5fa5407e85fa77d2a299c4e7628c0213116809f343946e62a8a25c5b1b"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}",
                          "--mandir=#{man}"
    system "make", "install"
  end

  test do
    (testpath/"dumbinput.txt").write("")
    system "#{bin}/iselect", "-ae", "< dumbinput.txt"
  end
end
