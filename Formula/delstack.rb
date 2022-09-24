# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Delstack < Formula
  desc "delstack"
  homepage "https://github.com/go-to-k/delstack"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v0.2.1/delstack_0.2.1_Darwin_x86_64.tar.gz"
      sha256 "497d6e840c1015c6c914034eeff4e7fdfe483cd58d18ebd8ac6a61b63885d0aa"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/go-to-k/delstack/releases/download/v0.2.1/delstack_0.2.1_Darwin_arm64.tar.gz"
      sha256 "8a53a0d694060d2266e0d0813838bcc6ddca714b7710d47ac91684baaa21fd35"

      def install
        bin.install "delstack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v0.2.1/delstack_0.2.1_Linux_x86_64.tar.gz"
      sha256 "796badf0ab775dcf6aae7fb8b1b81635ca8101880171330d9a9d0edcc4fbde0a"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-to-k/delstack/releases/download/v0.2.1/delstack_0.2.1_Linux_arm64.tar.gz"
      sha256 "18647739aa5271370c1fc7651a4df5d38fde0182b0918a89329798db7aaef0e5"

      def install
        bin.install "delstack"
      end
    end
  end

  test do
    system "#{bin}/delstack -v"
  end
end
