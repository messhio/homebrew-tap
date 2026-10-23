# Written by github.com/messhio/messh (.github/workflows/release-cli.yml) on each release; don't edit here.
class Messh < Formula
  desc "Publish SSH keys under your name and sign HTTP requests as you"
  homepage "https://messh.io"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/messhio/messh/releases/download/cli-v0.1.0/messh-darwin-arm64"
      sha256 "fd0e8d7d3c7d055375f2ece2dbc1194dc8c35afa3d2b29487a1dae39296580c9"
    end
    on_intel do
      url "https://github.com/messhio/messh/releases/download/cli-v0.1.0/messh-darwin-amd64"
      sha256 "1b189f253a6fcb6df4535e9e3ff9859c42c8c4fd208fa63091a9586c506fa433"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/messhio/messh/releases/download/cli-v0.1.0/messh-linux-arm64"
      sha256 "c6244a0e8fc7aa76c5bad399b64d489a0657c5fb8bc1a1a9119118f4944b60af"
    end
    on_intel do
      url "https://github.com/messhio/messh/releases/download/cli-v0.1.0/messh-linux-amd64"
      sha256 "6832920cf488c3f9b17541fa83ba3e4625a65694828a2f380f67252c570e4cde"
    end
  end

  def install
    binary = Dir["messh*"].first
    chmod 0755, binary
    bin.install binary => "messh"
  end

  test do
    assert_match "messh #{version}", shell_output("#{bin}/messh version")
  end
end
