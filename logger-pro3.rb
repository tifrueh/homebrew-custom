cask "logger-pro3" do
  version "3.16.2"
  sha256 "348172fe983420158dd6ec8ae74476fd36bad7cb57825b0110c6f09da721902c"

  url "https://d1zt81d93mquk0.cloudfront.net/download/LoggerPro#{version.dots_to_underscores}.dmg",
   verified: "LoggerPro#{version.dots_to_underscores}.dmg"
  name "logger-pro3"
  desc "Logging instrument for school"
  homepage "https://www.vernier.com/product/logger-pro-3/"

  pkg "Install Logger Pro 3.pkg"

  uninstall pkgutil: [
   "com.vernier.installer.lpapp",
   "com.vernier.installer.experiments_movies",
   "com.vernier.installer.experiments",
   "com.vernier.installer.webroot.pkg",

  ]
end
