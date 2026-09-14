# homebrew-doki

Homebrew tap for [doki](https://github.com/funstuff-app/doki).

```sh
brew tap funstuff-app/doki
brew install --cask funstuff-app/doki/doki
xattr -dr com.apple.quarantine /Applications/Doki.app
```

The last line is required. doki is signed with a self-signed certificate rather
than a paid Apple Developer ID, and Homebrew quarantines cask downloads, so
macOS blocks the app until that flag is cleared.
