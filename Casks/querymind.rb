cask "querymind" do
  version "1.0.157"
  sha256 "9df7906894070eca3279c5f2927257788a68518357de63ae10615466ffe4124e"

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
