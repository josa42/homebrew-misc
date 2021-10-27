# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Run < Formula
  desc ""
  homepage "https://github.com/josa42/run"
  version "0.1.0"
  license "MIT"
  depends_on :linux

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/josa42/run/releases/download/v0.1.0/run_0.1.0_Linux_x86_64.tar.gz"
      sha256 "0944784f45184f3db84f2da9b642ffff5066d4de347880298c35527f8a0ae6b0"

      def install
        bin.install "run"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/josa42/run/releases/download/v0.1.0/run_0.1.0_Linux_arm64.tar.gz"
      sha256 "06b962b967dd39db5e90d67b8cbdf73f7e3f2bda00e997a8cc5e4601f84e85ba"

      def install
        bin.install "run"
      end
    end
  end

  depends_on "go" => :build
end
