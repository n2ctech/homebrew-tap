# Mirror of n2ctech/homebrew-tap (Casks/notiferry.rb).
# Update version and SHA-256 from the final release manifest with every release.
cask "notiferry" do
  version "0.1.6,7"
  sha256 "92becbd40cf5aad2696c611b8df41331abc2696f2518248118ff9d5bdf825d16"

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
