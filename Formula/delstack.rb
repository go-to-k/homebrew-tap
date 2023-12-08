# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Delstack < Formula
  desc "delstack"
  homepage "https://github.com/go-to-k/delstack"
  version "1.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/go-to-k/delstack/releases/download/v1.4.1/delstack_1.4.1_Darwin_arm64.tar.gz"
      sha256 "a5c9bd76ae76b5ee198a3a468ca227a29f578bd31d2ae0c65f8218293c8197bc"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v1.4.1/delstack_1.4.1_Darwin_x86_64.tar.gz"
      sha256 "1df2010cedff6430fdf0e481a1b39499a65589fc6c08c9e66c8f8945998486e8"

      def install
        bin.install "delstack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-to-k/delstack/releases/download/v1.4.1/delstack_1.4.1_Linux_arm64.tar.gz"
      sha256 "7ff9547704691b493154d06faa88b455a1afa4f424b05a7158b1747bf0644b84"

      def install
        bin.install "delstack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/delstack/releases/download/v1.4.1/delstack_1.4.1_Linux_x86_64.tar.gz"
      sha256 "69365c7e409fe5abaf34fd6baa3552a9ebbd60ced2d56cc1208052584790872f"

      def install
        bin.install "delstack"
      end
    end
  end

  test do
    system "#{bin}/delstack -v"
  end
end
