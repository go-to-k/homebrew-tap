# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Delstack < Formula
  desc "delstack"
  homepage "https://github.com/go-to-k/delstack"
  version "0.13.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v0.13.3/delstack_0.13.3_Darwin_x86_64.tar.gz"
      sha256 "d6d5db47704014e0e3daefc9f50a5b8edf77e288ff6c10befac064be262c2e4a"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/go-to-k/delstack/releases/download/v0.13.3/delstack_0.13.3_Darwin_arm64.tar.gz"
      sha256 "f51c1220e8392775b9105519a6c9d18d0f8529a78999c565b8990e99c8fed04b"

      def install
        bin.install "delstack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-to-k/delstack/releases/download/v0.13.3/delstack_0.13.3_Linux_arm64.tar.gz"
      sha256 "dd20a26609c927c6f93b98ceeea3592ec661d1a93a6dfb6c3beda1ea66073ed3"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v0.13.3/delstack_0.13.3_Linux_x86_64.tar.gz"
      sha256 "e6ec0c9d3d5943f0ca54cbaf173a8d0d26bfbb6411efa143cc9c1b8837a5e5d3"

      def install
        bin.install "delstack"
      end
    end
  end

  test do
    system "#{bin}/delstack -v"
  end
end
