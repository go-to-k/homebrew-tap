# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Delstack < Formula
  desc "delstack"
  homepage "https://github.com/go-to-k/delstack"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v1.0.0/delstack_1.0.0_Darwin_x86_64.tar.gz"
      sha256 "3943cd649b4894eddbd582c28a6f13abffa41feb928e3af567925c957a1671e6"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/go-to-k/delstack/releases/download/v1.0.0/delstack_1.0.0_Darwin_arm64.tar.gz"
      sha256 "e749ce825fa31826d5d6fc6ef456225989459e7b226520af8529fe6b97974aa2"

      def install
        bin.install "delstack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-to-k/delstack/releases/download/v1.0.0/delstack_1.0.0_Linux_arm64.tar.gz"
      sha256 "090069038170823ce9ff307cee4b9af922bcea2dc9205a867d116b3ed068936a"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v1.0.0/delstack_1.0.0_Linux_x86_64.tar.gz"
      sha256 "01b7f251ca3eaa6fc112058234aeb843782fc4dca8dadf4fceae45becd78edfa"

      def install
        bin.install "delstack"
      end
    end
  end

  test do
    system "#{bin}/delstack -v"
  end
end
