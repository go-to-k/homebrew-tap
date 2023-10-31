# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Delstack < Formula
  desc "delstack"
  homepage "https://github.com/go-to-k/delstack"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/go-to-k/delstack/releases/download/v1.1.1/delstack_1.1.1_Darwin_arm64.tar.gz"
      sha256 "31a83e331302e9527425346dc96e727ed41413f07ffcccd3874614f7ddfea850"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v1.1.1/delstack_1.1.1_Darwin_x86_64.tar.gz"
      sha256 "fc9ed24aed03b823ff7e1eabfa0dfa7f13391c2a8bf1fe113c896f35f7d09cad"

      def install
        bin.install "delstack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v1.1.1/delstack_1.1.1_Linux_x86_64.tar.gz"
      sha256 "f69565651f1be6a7e282579343e16f6c92632218dd61d7678d7d9380bff496d6"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-to-k/delstack/releases/download/v1.1.1/delstack_1.1.1_Linux_arm64.tar.gz"
      sha256 "e33585591251d8e9d14c3ce8e72621576e033397043fca437c50f7ae7a6fd37f"

      def install
        bin.install "delstack"
      end
    end
  end

  test do
    system "#{bin}/delstack -v"
  end
end
