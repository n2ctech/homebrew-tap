cask "loudwalk" do
  version "0.4.11,22"
  sha256 "7ead0f36886f8d987b1fc30b7789945ef95b76b6fda0576d72aaa0893c8a4175"

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
