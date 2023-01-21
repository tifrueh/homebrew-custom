class Zork2 < Formula
  desc "Legendary text adventure originally released by Infocom"
  homepage "http://infocom-if.org/games/zork2/zork2.html"
  url "http://infocom-if.org/downloads/zork2.zip"
  version "48"
  sha256 "7c360a14ec61d8e8f265e1aa99a13487c5e0f016a752e4b32314405a0e9ffea0"
  license :cannot_represent

  depends_on "frotz"

  def install
    prefix.install "README.txt"
    mkdir_p "share/SAVE"
    pkgshare.install buildpath/"DATA/ZORK2.DAT"
    system "echo '#!/bin/sh' > #{name}"
    system "echo 'mkdir -p $HOME/.local/share/#{name}/SAVE' >> #{name}"
    system "echo '/opt/homebrew/bin/frotz -R $HOME/.local/share/#{name}/SAVE #{pkgshare}/ZORK2.DAT' >> #{name}"
    chmod 0755, name.to_s
    bin.install name.to_s
  end

  test do
    zork2
  end
end
