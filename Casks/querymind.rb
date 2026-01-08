cask "querymind" do
  version "1.0.158"
  sha256 "dbd799f0688eacaf5564602878b650b2bb52bba73f92bcc10b0503ffa08dfc4b"

  url "https://releases.querymind.dev/v#{version}/QueryMind-#{version}-arm64.dmg"
  name "QueryMind"
  desc "AI-powered database management desktop app"
  homepage "https://app.querymind.dev"

  livecheck do
    url "https://releases.querymind.dev/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "QueryMind.app"

  zap trash: [
    "~/Library/Application Support/QueryMind",
    "~/Library/Caches/dev.querymind.app",
    "~/Library/Caches/dev.querymind.app.ShipIt",
    "~/Library/Preferences/dev.querymind.app.plist",
    "~/Library/Saved Application State/dev.querymind.app.savedState",
  ]
end
