# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "code-expert-sync" do
  version "1.0.2"
  sha256 "267f1ca0222a5aaed6c3362f429450f02697f5498d672d3f03f2660d845efc2d"

  url "https://github.com/CodeExpertETH/CodeExpertSync/releases/download/v#{version}/Code.Expert.Sync_#{version}_aarch64.dmg"
  name "code-expert-sync"
  desc "Sync projects from Code Expert Web to your own computer"
  homepage "https://github.com/CodeExpertETH/CodeExpertSync"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://github.com/CodeExpertETH/CodeExpertSync.git"
    strategy :git
  end

  app "Code Expert Sync.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Application Support/ch.ethz.code-expert.sync",
    "~/Library/Caches/ch.ethz.code-expert.sync",
    "~/Library/Preferences/ch.ethz.code-expert.sync.plist",
    "~/Library/WebKit/ch.ethz.code-expert.sync",
  ]

end
