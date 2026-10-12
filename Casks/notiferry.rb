cask "notiferry" do
  version "0.1.1,2"
  sha256 "7fc0538389d952570ff2e20ec82440837ecff0bc7fcc55c77f1d8983e6395da1"

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

  depends_on macos: :sequoia

  app "NotiFerry.app"

  zap trash: "~/Library/Containers/app.notiferry"

  caveats <<~EOS
    NotiFerry is paid software with a 7-day trial. The trial starts only after
    you confirm that a test notification reached your iPhone.
  EOS
end
