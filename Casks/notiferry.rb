# Mirror of n2ctech/homebrew-tap (Casks/notiferry.rb).
# Update version and SHA-256 from the final release manifest with every release.
cask "notiferry" do
  version "0.1.5,6"
  sha256 "f8c3bf2d9f61c411a4f29d23b3a5a5b3c3b3e6ac80cbfc38672d6deb64643f6f"

  url "https://notiferry.com/downloads/NotiFerry-#{version.csv.first}-#{version.csv.second}.dmg"
  name "NotiFerry"
  desc "Forwards Notification Center alerts to an iPhone through ntfy"
  homepage "https://notiferry.com/"

  livecheck do
    url "https://notiferry.com/.well-known/notiferry-update.json"
    strategy :json do |json|
      "#{json.dig("bundle", "version")},#{json.dig("bundle", "build")}"
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "NotiFerry.app"

  zap trash: "~/Library/Containers/app.notiferry"

  caveats <<~EOS
    NotiFerry is paid software with a 7-day trial. The trial starts only after
    you confirm that a test notification reached your iPhone.
  EOS
end
