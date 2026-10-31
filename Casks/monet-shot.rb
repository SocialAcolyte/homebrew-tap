cask "monet-shot" do
  version "0.1.0"
  sha256 "931972fc9234d5bc20e32cf8bd90752c84dedac765a4b2a9d0063996266be9cb"

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
