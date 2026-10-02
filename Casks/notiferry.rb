cask "notiferry" do
  version "0.1.0,1"
  sha256 "b93ef0509e1721b80ed8073efeb6281124d67d33845aee603208725f6151ae61"

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
