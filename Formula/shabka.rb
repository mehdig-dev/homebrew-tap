class Shabka < Formula
  desc "Persistent memory for LLM coding agents"
  homepage "https://github.com/mehdig-dev/shabka"
  license any_of: ["MIT", "Apache-2.0"]
  version "0.5.2"

  on_macos do
    on_intel do
      url "https://github.com/mehdig-dev/shabka/releases/download/v#{version}/shabka-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "33bbbc75cddffb8aa3beb4434c660a5266b21bf64a01f61c1c0a383357107dbe"
    end
    on_arm do
      url "https://github.com/mehdig-dev/shabka/releases/download/v#{version}/shabka-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fa4a937fd4f1a30b704b13e74711af1fb0e49ef6776b7cfc9a05517fe9f754d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mehdig-dev/shabka/releases/download/v#{version}/shabka-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d4934323e3f0c2ee39da90e0c77c189b5bb5a6d4eda4a6a52e7ae810a727d68"
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
