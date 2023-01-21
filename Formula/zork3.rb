class Zork3 < Formula
  desc "Legendary text adventure originally released by Infocom"
  homepage "http://infocom-if.org/games/zork3/zork3.html"
  url "http://infocom-if.org/downloads/zork3.zip"
  version "17"
  sha256 "ef4a3b2bb7d3ae65de54a54520b550f13b3a2e964985550ffd401c8925bd0b10"
  license :cannot_represent

  depends_on "frotz"

  def install
    prefix.install "README.txt"
    mkdir_p "share/SAVE"
    pkgshare.install buildpath/"DATA/ZORK3.DAT"
    system "echo '#!/bin/sh' > #{name}"
    system "echo 'mkdir -p $HOME/.local/share/#{name}/SAVE' >> #{name}"
    system "echo '/opt/homebrew/bin/frotz -R $HOME/.local/share/#{name}/SAVE #{pkgshare}/ZORK3.DAT' >> #{name}"
    chmod 0755, name.to_s
    bin.install name.to_s
  end

  test do
    zork3
  end
end
