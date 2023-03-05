# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Delstack < Formula
  desc "delstack"
  homepage "https://github.com/go-to-k/delstack"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v0.10.0/delstack_0.10.0_Darwin_x86_64.tar.gz"
      sha256 "37f4f54f82774653c4dcb2d64d0ae3707f87085c7823a8180226bf7efeb4bd78"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/go-to-k/delstack/releases/download/v0.10.0/delstack_0.10.0_Darwin_arm64.tar.gz"
      sha256 "20453c65b2c59a97889b5321c6c6fbecf26931eb0b0047fb8f0fa974463f281a"

      def install
        bin.install "delstack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-to-k/delstack/releases/download/v0.10.0/delstack_0.10.0_Linux_arm64.tar.gz"
      sha256 "ea40137196f7d995caa8913b572fabfa3f581308e81da0e75413ed557b2be754"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v0.10.0/delstack_0.10.0_Linux_x86_64.tar.gz"
      sha256 "d53231419f83643ffa76ba291de296cf989fc6e48bd6c8557c648c6ef92729a9"

      def install
        bin.install "delstack"
      end
    end
  end

  test do
    system "#{bin}/delstack -v"
  end
end
