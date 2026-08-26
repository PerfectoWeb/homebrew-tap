cask "belay" do
  version "1.6.1"
  sha256 "aae9b715bef2d522b10924ef09253144197089cc2dfd978ec6eaa4df46cf39c9"

  url "https://github.com/PerfectoWeb/Belay/releases/download/v#{version}/Belay-#{version}.dmg",
      verified: "github.com/PerfectoWeb/Belay/"
  name "Belay"
  desc "Keeps the Mac awake only while a local AI coding agent is working"
  homepage "https://github.com/PerfectoWeb/Belay/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Belay.app"

  zap trash: [
    "~/Library/Application Support/Belay",
    "~/Library/Caches/com.perfectoweb.belay",
    "~/Library/Containers/com.perfectoweb.belay",
    "~/Library/Preferences/com.perfectoweb.belay.plist",
  ]
end
