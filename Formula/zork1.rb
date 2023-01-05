class Zork1 < Formula
  desc "Legendary text adventure originally released by Infocom"
  homepage "http://infocom-if.org/games/zork1/zork1.html"
  url "http://infocom-if.org/downloads/zork1.zip"
  version "88"
  sha256 "645027fb189ba8fd30daecca609e68e2bf2337b76e7b4f925ccf58778f3eac40"
  license "ACTIVISION-EULA"

  depends_on "frotz"

  def install
    prefix.install "README.txt"
    system "echo '#!/bin/sh' > #{name}"
    system "mkdir -p share/SAVE"
    system "touch share/SAVE/ZORK1_SAVEFILE_DIR"
    system "cp DATA/ZORK1.DAT share/ZORK1.DAT"
    pkgshare.install Dir["share/*"]
    system "echo '/opt/homebrew/bin/frotz -R #{pkgshare}/SAVE #{pkgshare}/ZORK1.DAT' >> #{name}"
    system "chmod a+x #{name}"
    bin.install "#{name}"
  end

  test do
    zork1
  end
end
