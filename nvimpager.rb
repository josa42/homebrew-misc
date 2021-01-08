class Nvimpager < Formula
  desc "Using neovim as a pager to view man pages, git diffs, whatnot with neovim's syntax highlighting and mouse support."
  homepage "https://github.com/lucc/nvimpager"
  version "0.9"
  url "https://github.com/lucc/nvimpager/archive/v#{version}.tar.gz"
  sha256 "ae2d99d59bd43d96e12a07ffa32c3f120636163308c2b6c1da43052bc8bce1a0"
  license "BSD-3-Clause"
  head "https://github.com/lucc/nvimpager.git"

  depends_on "pandoc" => :build

  def install
    system "/usr/local/bin/tree"
    system "make", "PREFIX=#{prefix}", "install"
    system "/usr/local/bin/tree"
  end

  def caveats
    <<~EOS
      To use nvimpager as your default pager, add `export PAGER=nvimpager` to your
      shell configuration.
    EOS
  end

  test do
    assert_match(/v#{version}/, shell_output("#{bin}/nvimpager -v"))
  end
end
