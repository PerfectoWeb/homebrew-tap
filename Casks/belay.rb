cask "belay" do
  version "1.3.1"
  sha256 "8dd6a33638f53cbc63b226a0b63ec7f771ba9c101142ae94b59360835788dc07"

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
