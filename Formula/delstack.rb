# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Delstack < Formula
  desc "delstack"
  homepage "https://github.com/go-to-k/delstack"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/go-to-k/delstack/releases/download/v0.2.0/delstack_0.2.0_Darwin_arm64.tar.gz"
      sha256 "0f15af455d5becdd3446f306908cad129cf57e380e3bed10f9e3b2c5048d1744"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v0.2.0/delstack_0.2.0_Darwin_x86_64.tar.gz"
      sha256 "6596e1c059544762a5aec7bea56e9937147b419a9c4a3949c06765aad82d1c3c"

      def install
        bin.install "delstack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v0.2.0/delstack_0.2.0_Linux_x86_64.tar.gz"
      sha256 "0e1849640f7979b199451c68478d6b791354210863eb4e1a15e8484eb81c8f29"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-to-k/delstack/releases/download/v0.2.0/delstack_0.2.0_Linux_arm64.tar.gz"
      sha256 "a69d427da7d0070dd0c4973ea64187cc7b273e2c611b73e436b6679211bc5cf5"

      def install
        bin.install "delstack"
      end
    end
  end

  test do
    system "#{bin}/delstack -v"
  end
end
