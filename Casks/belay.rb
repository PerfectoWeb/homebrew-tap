cask "belay" do
  version "1.6.0"
  sha256 "be575c58d79fcb2541abc2a246c86d2897e1fac9535eb1062557fc639838bcc9"

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
