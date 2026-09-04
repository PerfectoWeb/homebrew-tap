cask "belay" do
  version "1.8.0"
  sha256 "0a4ee7a3edcfa6002d2fa90a8d00cb2338ba48cbd21ced532f6ba672b725e91f"

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
