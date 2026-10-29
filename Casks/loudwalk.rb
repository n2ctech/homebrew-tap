cask "loudwalk" do
  version "0.4.12,24"
  sha256 "32ed9ec598f9e17592dad47952f5d0bc6b847368290945f29e9cb14a82e33e8b"

  url "https://downloads.loudwalk.app/releases/#{version.csv.first}-#{version.csv.second}/Loudwalk-#{version.csv.first}-#{version.csv.second}.zip"
  name "Loudwalk"
  desc "Spaced-repetition flashcard app that asks your Anki decks out loud"
  homepage "https://loudwalk.com/"

  livecheck do
    url "https://loudwalk.com/changelog"
    regex(/Loudwalk[._-]v?(\d+(?:\.\d+)+)-(\d+)\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Loudwalk.app"

  zap trash: [
    "~/Library/Application Support/Loudwalk",
    "~/Library/Preferences/com.loudwalk.mac.plist",
  ]

  caveats <<~EOS
    On-screen review, FSRS-6 scheduling, iCloud Drive sync, and Anki import/export
    are free forever. The voice tutor is a subscription after a 7-day, 150-card
    free trial with no payment card required.
  EOS
end
