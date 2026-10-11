class Jprot < Formula
  desc "Portfolio site generator without a build step"
  homepage "https://github.com/Moaaz-i/JPROT"
  url "https://registry.npmjs.org/jprot/-/jprot-0.10.0.tgz"
  sha256 "89375b8734b66a8f32a66aeec71f2c1a33393dd98d32ae99b769c836f211219f"
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
