cask "gibson" do
  version "1.0.1"
  sha256 "e022442c0277234ff2eadcc9e5bc7fc4a9ed3b2ee9ff4d6904f7129df6103e95"

  url "https://github.com/PerfectoWeb/Gibson/releases/download/v#{version}/Gibson.saver.zip",
      verified: "github.com/PerfectoWeb/Gibson/"
  name "Gibson"
  desc "Screen saver that draws a hacker-film dashboard from real system telemetry"
  homepage "https://github.com/PerfectoWeb/Gibson/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  screen_saver "Gibson.saver"

  zap trash: "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/com.perfecto-web.Gibson.*.plist"
end
