class Shabka < Formula
  desc "Persistent memory for LLM coding agents"
  homepage "https://github.com/mehdig-dev/shabka"
  license any_of: ["MIT", "Apache-2.0"]
  version "0.5.1"

  on_macos do
    on_intel do
      url "https://github.com/mehdig-dev/shabka/releases/download/v#{version}/shabka-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d8228ddda59d0dd1fbba2afa06240ad1e63717c54fb9a96aef6ea24c654f0070"
    end
    on_arm do
      url "https://github.com/mehdig-dev/shabka/releases/download/v#{version}/shabka-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "27e90b2f05d0f4ff9bd4e2fee75c16cfc13b41ecf2432d98a1532c02cc9eea4e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mehdig-dev/shabka/releases/download/v#{version}/shabka-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ac9212212d171cb681f174ffd1a5b12577a4ace02fd52cf990a8fe7191ea1b9"
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
