cask "spotifyfloater" do
  version "1.0.0"
  sha256 "0816a8ef95f5ae4524201bdd15abf94515a96a8f883c9a151abb427fcf3dd758"

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
