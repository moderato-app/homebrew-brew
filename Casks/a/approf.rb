cask "approf" do
  version "14.1.0"
  sha256 "e2804f050f85b22a81bf7817a6aef291dcf5d0b6d7747734ea1edcd375e5d220"

  url "https://github.com/moderato-app/approf/releases/download/v#{version}/approf.app.zip"
  name "approf"
  desc "Native app for pprof"
  homepage "https://github.com/moderato-app/approf"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "approf.app"

  uninstall quit: "the.future.app.approf.approf"

  zap trash: [
    "~/Library/Application Support/the.future.app.approf.approf.plist",
    "~/Library/Caches/the.future.app.approf.approf",
    "~/Library/Cookies/the.future.app.approf.approf.binarycookies",
    "~/Library/HTTPStorages/the.future.app.approf.approf",
    "~/Library/LaunchAgents/the.future.app.approf.approf.plist",
    "~/Library/Preferences/the.future.app.approf.approf.plist",
  ]
end
