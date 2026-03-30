require "language/node"

class Openclaw < Formula
  desc "Open-source multiagent CLI for AI agent orchestration"
  homepage "https://openclaw.ai"
  url "https://registry.npmjs.org/openclaw/-/openclaw-2026.3.28.tgz"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "OpenClaw", shell_output("#{bin}/openclaw --version 2>&1")
  end
end
