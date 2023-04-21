# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lamver < Formula
  desc "lamver"
  homepage "https://github.com/go-to-k/lamver"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/lamver/releases/download/v0.2.0/lamver_0.2.0_Darwin_x86_64.tar.gz"
      sha256 "6b909587c92dac44ef76c09819f3a75ec09786f1ee1da560693dc7edc543dbc9"

      def install
        bin.install "lamver"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/go-to-k/lamver/releases/download/v0.2.0/lamver_0.2.0_Darwin_arm64.tar.gz"
      sha256 "bcac7517a452b2252d91e81ebc1630251b4d8917105a0b1af3543edf4260f327"

      def install
        bin.install "lamver"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-to-k/lamver/releases/download/v0.2.0/lamver_0.2.0_Linux_arm64.tar.gz"
      sha256 "03ec9366513c82fe126483c2b9181b18b61e0224311b4ab55bee872bc463ff47"

      def install
        bin.install "lamver"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-to-k/lamver/releases/download/v0.2.0/lamver_0.2.0_Linux_x86_64.tar.gz"
      sha256 "7bb76409644e5f4183433fecaa3e8f8b49a82cb0624eeb1ed7a0ce8a8a1bb955"

      def install
        bin.install "lamver"
      end
    end
  end

  test do
    system "#{bin}/lamver -v"
  end
end
