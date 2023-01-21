class Zork1 < Formula
  desc "Legendary text adventure originally released by Infocom"
  homepage "http://infocom-if.org/games/zork1/zork1.html"
  url "http://infocom-if.org/downloads/zork1.zip"
  version "88"
  sha256 "645027fb189ba8fd30daecca609e68e2bf2337b76e7b4f925ccf58778f3eac40"
  license :cannot_represent

  depends_on "frotz"

  def install
    prefix.install "README.TXT"
    mkdir_p "share/SAVE"
    pkgshare.install buildpath/"DATA/ZORK1.DAT"
    system "echo '#!/bin/sh' > #{name}"
    system "echo 'mkdir -p $HOME/.local/share/#{name}/SAVE' >> #{name}"
    system "echo '/opt/homebrew/bin/frotz -R $HOME/.local/share/#{name}/SAVE #{pkgshare}/ZORK1.DAT' >> #{name}"
    chmod 0755, name.to_s
    bin.install name.to_s
  end

  test do
    frotz
  end
end
