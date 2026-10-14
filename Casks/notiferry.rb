cask "notiferry" do
  version "0.1.3,4"
  sha256 "edb0d7fc943d272a8dfe3f016ffcc76af8f7cf789191f1e8e796ba612ab733a7"

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
