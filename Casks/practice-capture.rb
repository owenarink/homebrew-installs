cask "practice-capture" do
  version "0.1.0-preview.1"
  sha256 "5c11bc73678380e3f6d7c9efed2e77372ff74fc746fcbd13ed60790d5def116b"

  url "https://github.com/owenarink/repstruc/releases/download/practice-capture-v#{version}/Practice-Capture-macOS-arm64.zip"
  name "Practice Capture"
  desc "Experimental screenshot handoff to the ChatGPT desktop app"
  homepage "https://github.com/owenarink/repstruc/tree/main/apps/practice-capture"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Practice-Capture/Practice Capture.app"

  caveats <<~EOS
    This preview requires the ChatGPT desktop app, Screen Recording permission,
    and Accessibility permission. Automatic background handoff still needs a
    live compatibility check with the installed ChatGPT version.

    The app is ad-hoc signed and is not notarized. macOS may require first-launch
    approval in System Settings > Privacy & Security. It cannot guarantee
    uninterrupted browser focus or undetectability to websites or monitoring.
  EOS
end
