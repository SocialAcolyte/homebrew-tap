cask "monet-shot" do
  version "0.1.1"
  sha256 "36177ae202e0dc159df42941a47bd4aaef03aa1d6a317af40fe4216066422c99"

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
