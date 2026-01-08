cask "querymind" do
  version "1.0.158"
  sha256 "22af597e5156abbcef380b51f0f9895eb1dc6855458e3844ba3c490ac7a49d9d"

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
