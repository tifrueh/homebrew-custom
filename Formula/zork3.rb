class Zork3 < Formula
  desc "Legendary text adventure originally released by Infocom"
  homepage "http://infocom-if.org/games/zork3/zork3.html"
  url "http://infocom-if.org/downloads/zork3.zip"
  version "17"
  sha256 "ef4a3b2bb7d3ae65de54a54520b550f13b3a2e964985550ffd401c8925bd0b10"
  license "ACTIVISION-EULA"

  depends_on "frotz"

  def install
    prefix.install "README.txt"
    system "echo '#!/bin/sh' > #{name}"
    system "mkdir -p share/SAVE"
    system "touch share/SAVE/ZORK3_SAVEFILE_DIR"
    system "cp DATA/ZORK3.DAT share/ZORK3.DAT"
    pkgshare.install Dir["share/*"]
    system "echo '/opt/homebrew/bin/frotz -R #{pkgshare}/SAVE #{pkgshare}/ZORK3.DAT' >> #{name}"
    system "chmod a+x #{name}"
    bin.install "#{name}"
  end

  test do
    zork3
  end
end
