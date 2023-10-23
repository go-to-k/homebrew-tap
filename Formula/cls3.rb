# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cls3 < Formula
  desc "cls3"
  homepage "https://github.com/go-to-k/cls3"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/cls3/releases/download/v0.12.0/cls3_0.12.0_Darwin_x86_64.tar.gz"
      sha256 "8fb7d313c255619f297b6d1844815af3138b69a8cdf02835126efb608cd1f3f3"

      def install
        bin.install "cls3"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/go-to-k/cls3/releases/download/v0.12.0/cls3_0.12.0_Darwin_arm64.tar.gz"
      sha256 "83f956ec81f92f102c88f945ecf6bc4102875dc3d0b3fd2dfe5d4edb386b2843"

      def install
        bin.install "cls3"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/cls3/releases/download/v0.12.0/cls3_0.12.0_Linux_x86_64.tar.gz"
      sha256 "42e2577c3cca02c215c235a1ddf49d109c1cd7e304cd8542484ef56882eeb763"

      def install
        bin.install "cls3"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-to-k/cls3/releases/download/v0.12.0/cls3_0.12.0_Linux_arm64.tar.gz"
      sha256 "eb3473c7c207a4478dfe7a00cb9c6452634bc7e44830b010d0d4373582ada767"

      def install
        bin.install "cls3"
      end
    end
  end

  test do
    system "#{bin}/cls3 -v"
  end
end
