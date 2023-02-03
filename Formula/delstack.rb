# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Delstack < Formula
  desc "delstack"
  homepage "https://github.com/go-to-k/delstack"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v0.9.0/delstack_0.9.0_Darwin_x86_64.tar.gz"
      sha256 "bfaab7d1cdba449d0b399b2eb71ea8a47256e9b280123bba3d1607932f13ace7"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/go-to-k/delstack/releases/download/v0.9.0/delstack_0.9.0_Darwin_arm64.tar.gz"
      sha256 "f52ac74762215fc32c1c0fa1d1918b69eef00c91069fa54c45673df9fae12325"

      def install
        bin.install "delstack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-to-k/delstack/releases/download/v0.9.0/delstack_0.9.0_Linux_arm64.tar.gz"
      sha256 "a01fa22129115120ae78937a30edac83d9d13f6b1f9f69c3a8807f5321f542f6"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v0.9.0/delstack_0.9.0_Linux_x86_64.tar.gz"
      sha256 "f8298605bef0a81e155bd7c8d0439662fc94cf332962d756693f122d0e4e028f"

      def install
        bin.install "delstack"
      end
    end
  end

  test do
    system "#{bin}/delstack -v"
  end
end
