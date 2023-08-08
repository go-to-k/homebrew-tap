# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cls3 < Formula
  desc "cls3"
  homepage "https://github.com/go-to-k/cls3"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/go-to-k/cls3/releases/download/v0.7.1/cls3_0.7.1_Darwin_arm64.tar.gz"
      sha256 "32378badfae92213e1afc94322f507af9f8e4f74948b2688850f6fd31b20eb8c"

      def install
        bin.install "cls3"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/cls3/releases/download/v0.7.1/cls3_0.7.1_Darwin_x86_64.tar.gz"
      sha256 "db948fc108a601cecbc3a0e5f09f94d0e03d4af5357a965a3eaadfc454076671"

      def install
        bin.install "cls3"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-to-k/cls3/releases/download/v0.7.1/cls3_0.7.1_Linux_arm64.tar.gz"
      sha256 "0016d5d147a4c3c4dc271bedd9c688837963fecc1509722731b7d69fa28f6b6c"

      def install
        bin.install "cls3"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/cls3/releases/download/v0.7.1/cls3_0.7.1_Linux_x86_64.tar.gz"
      sha256 "dcc979a906be51c5bc78bf106ab72f18527f43ae5ddd3103fd91d93dd1caa866"

      def install
        bin.install "cls3"
      end
    end
  end

  test do
    system "#{bin}/cls3 -v"
  end
end
