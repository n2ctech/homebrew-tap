cask "loudwalk" do
  version "0.4.16,28"
  sha256 "326e8dbe1a7408efd5affc1c00acb5efa6894ccd873e490719d909d41d1265b9"

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
    are free forever. The voice tutor includes 10 free voice cards with no payment
    card required, followed by a 7-day App Store free trial on Walking plans.
  EOS
end
