class Zork2 < Formula
  desc "Legendary text adventure originally released by Infocom"
  homepage "http://infocom-if.org/games/zork2/zork2.html"
  url "http://infocom-if.org/downloads/zork2.zip"
  version "48"
  sha256 "7c360a14ec61d8e8f265e1aa99a13487c5e0f016a752e4b32314405a0e9ffea0"
  license "ACTIVISION-EULA"

  depends_on "frotz"

  def install
    prefix.install "README.txt"
    system "echo '#!/bin/sh' > #{name}"
    system "mkdir -p share/SAVE"
    system "touch share/SAVE/ZORK2_SAVEFILE_DIR"
    system "cp DATA/ZORK2.DAT share/ZORK2.DAT"
    pkgshare.install Dir["share/*"]
    system "echo '/opt/homebrew/bin/frotz -R #{pkgshare}/SAVE #{pkgshare}/ZORK2.DAT' >> #{name}"
    system "chmod a+x #{name}"
    bin.install "#{name}"
  end

  test do
    zork2
  end
end
