# typed: false
# frozen_string_literal: true

cask "ka" do
  name "ka"
  desc "Git-native work tracker for AI agents and the humans who watch them"
  homepage "https://github.com/JumpKickOSS/ka"
  version "1.0.0"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "ka"

  on_macos do
    on_intel do
      url "https://github.com/JumpKickOSS/ka/releases/download/v1.0.0/ka_darwin_amd64.tar.gz"
      sha256 "ce3f7f08b43659122d95174a1ab28018f8c33d34d734926587f63ffa9e56272b"
    end
    on_arm do
      url "https://github.com/JumpKickOSS/ka/releases/download/v1.0.0/ka_darwin_arm64.tar.gz"
      sha256 "dc156d476d81aa9357aa78092a1ab3eced18808005ca06818426bec149d88209"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/JumpKickOSS/ka/releases/download/v1.0.0/ka_linux_amd64.tar.gz"
      sha256 "e5e322d58faa2dcf798295cae0b78869f03d95c7d56558f991468c80d1948496"
    end
    on_arm do
      url "https://github.com/JumpKickOSS/ka/releases/download/v1.0.0/ka_linux_arm64.tar.gz"
      sha256 "41e232347d3e1123ca1cfe39abba3561e976dc2ea89473da3aab10842f075c8b"
    end
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/ka"]
    end
  end
end
