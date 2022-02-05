cask "mathcha-notebook" do
  version :latest
  sha256 :no_check

  url "https://notebook-downloads.mathcha.io/public/Mathcha%20Notebook-#{version}-mac.zip"
  name "mathcha-notebook"
  desc "Mathematics Editor"
  homepage "https://www.mathcha.io/"

  app "Mathcha Notebook.app"

  zap trash: [
    "~/Library/Application Support/Mathcha Notebook",
    "~/Library/Logs/Mathcha Notebook",
    "~/Library/Logs/mathcha-notebook-service",
    "~/Library/Preferences/mathcha.com.mathnotebook.plist",
    "~/Library/Saved Application State/mathcha.com.mathnotebook.savedState",
  ]
end
