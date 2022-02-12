cask "logitech-options-plus-beta" do
  version :latest
  sha256 :no_check

  url "https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer.zip", verified: "download01.logi.com"
  name "logi-options-plus-beta"
  desc "Logi Options + beta"
  homepage "https://www.logitech.com/de-ch/software/logi-options-plus.html"

  installer script: { executable: "logioptionsplus_installer.app/Contents/MacOS/logioptionsplus_installer" }

  uninstall quit:   [
    "/Applications/logioptionsplus.app/Contents/MacOS/logioptionsplus",
  ],
            delete: [
              "/Applications/logioptionsplus.app",
            ]

  zap trash: [
    "~/Library/Preferences/com.logi.optionsplus.plist",
    "~/Library/Application Support/logioptionsplus",
    "~/Library/Saved Application State/com.logi.optionsplus.savedState",
    "/Library/LaunchDaemons/com.logi.optionsplus.updater.plist",
    "/Library/LaunchAgents/com.logi.optionsplus.plist",
  ]
end
