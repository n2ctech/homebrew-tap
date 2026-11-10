# Mirror of n2ctech/homebrew-tap (Casks/notiferry.rb).
# Update version and SHA-256 from the final release manifest with every release.
cask "notiferry" do
  version "0.1.7,8"
  sha256 "c5773d3d802ce8fe3c9ec7adf0e7feead16efd441ec71e06de1c655595fa9726"

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
