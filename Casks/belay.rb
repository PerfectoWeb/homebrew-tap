cask "belay" do
  version "2.1.1"
  sha256 "b35d9154b7c8b0050205b07247ff27af7cab6de5ecc13320d00cc994c0ccd5ea"

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
