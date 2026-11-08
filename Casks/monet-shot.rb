cask "monet-shot" do
  version "0.2.0"
  sha256 "7f38eec357fc88de362593eff052c890ec8bf63432b85237909476188abdfdfb"

  url "https://github.com/SocialAcolyte/monet-shot/releases/download/v#{version}/MonetShot-#{version}.zip"
  name "Monet Shot"
  desc "Menu bar screen recorder that frames demos like paintings"
  homepage "https://github.com/SocialAcolyte/monet-shot"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Monet Shot.app"

  zap trash: [
    "~/Library/Application Support/MonetShot",
    "~/Library/Caches/MonetShot",
    "~/Library/Logs/MonetShot",
  ]

  caveats <<~EOS
    Monet Shot is not notarised by Apple yet. The first time you open it, macOS
    will stop it: go to System Settings › Privacy & Security and click "Open Anyway".
  EOS
end
