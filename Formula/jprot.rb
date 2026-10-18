class Jprot < Formula
  desc "Portfolio site generator without a build step"
  homepage "https://github.com/Moaaz-i/JPROT"
  url "https://registry.npmjs.org/jprot/-/jprot-0.10.1.tgz"
  sha256 "33b689d5ba4b6e43acc6aa4aea57b61fba4f9b357a2dc9aef4343ac369726dcc"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/jprot"
  end

  test do
    system bin/"jprot", "--version"
  end
end
