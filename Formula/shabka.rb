class Shabka < Formula
  desc "Persistent memory for LLM coding agents"
  homepage "https://github.com/mehdig-dev/shabka"
  license any_of: ["MIT", "Apache-2.0"]
  version "0.5.0"

  on_macos do
    on_intel do
      url "https://github.com/mehdig-dev/shabka/releases/download/v#{version}/shabka-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/mehdig-dev/shabka/releases/download/v#{version}/shabka-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mehdig-dev/shabka/releases/download/v#{version}/shabka-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "shabka"
    bin.install "shabka-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shabka --version")
  end
end
