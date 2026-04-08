cask "spotifyfloater" do
  version "1.0.1"
  sha256 "a336f30f056b38c80271fe6cbe63a330aa8ba1b45ef2760ed38b6065d4823f0b"

  url "https://github.com/LukasKanopka/Floater-For-Spotify/releases/download/v#{version}/SpotifyFloater-v#{version}.zip"
  name "SpotifyFloater"
  desc "Floating Spotify controller for macOS"
  homepage "https://github.com/LukasKanopka/Floater-For-Spotify"

  app "SpotifyFloater.app"

  caveats do
    <<~EOS
      If macOS blocks the app (not notarized), try:
        xattr -dr com.apple.quarantine /Applications/SpotifyFloater.app
    EOS
  end
end
