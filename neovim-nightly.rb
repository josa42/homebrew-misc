class NeovimNightly < Formula
  desc "neovim nightly"
  homepage "https://github.com/neovim/neovim/"
  head "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz"
  license "Apache-2.0"

  conflicts_with "neovim", because: "both install `nvim` binaries"

  def install
    prefix.install Dir["*"]
  end

  test do
    (testpath/"test.txt").write("Hello World from Vim!!")
    system bin/"nvim", "--headless", "-i", "NONE", "-u", "NONE",
                       "+s/Vim/Neovim/g", "+wq", "test.txt"
    assert_equal "Hello World from Neovim!!", (testpath/"test.txt").read.chomp
  end

end
