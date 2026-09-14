cask "doki" do
  version "1.0.0"
  sha256 "2ddbcb9fc7c6408b2a23dfadbe475859b2b64deb513ff30b5b16bb029af976c0"

  url "https://github.com/funstuff-app/doki/releases/download/v#{version}/Doki.dmg"
  name "doki"
  desc "Taps your trackpad in time with bouncing Dock icons"
  homepage "https://github.com/funstuff-app/doki"

  depends_on macos: :ventura

  app "Doki.app"

  uninstall quit: "com.local.doki"

  zap trash: [
    "~/Library/Caches/com.local.doki",
    "~/Library/HTTPStorages/com.local.doki",
    "~/Library/Preferences/com.local.doki.plist",
  ]

  caveats <<~EOS
    Before Doki will open, run:

      xattr -dr com.apple.quarantine "#{appdir}/Doki.app"

    Doki is signed with a self-signed certificate rather than a paid Apple
    Developer ID, so macOS blocks it until that download flag is cleared.

    Doki also needs Accessibility permission, which it asks for on first launch.
  EOS
end
