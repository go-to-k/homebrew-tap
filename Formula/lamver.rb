# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lamver < Formula
  desc "lamver"
  homepage "https://github.com/go-to-k/lamver"
  version "0.16.0"

  on_macos do
    on_intel do
      url "https://github.com/go-to-k/lamver/releases/download/v0.16.0/lamver_0.16.0_Darwin_x86_64.tar.gz"
      sha256 "64b3b5c4ae193ae472b40df7ee334454d15cc324fd87ef54d4146502364d62bd"

      def install
        bin.install "lamver"
      end
    end
    on_arm do
      url "https://github.com/go-to-k/lamver/releases/download/v0.16.0/lamver_0.16.0_Darwin_arm64.tar.gz"
      sha256 "dcfd126495cda5a9251d6e8670e74fadad28e72d8d1fa5cdc1f6d812878db005"

      def install
        bin.install "lamver"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/go-to-k/lamver/releases/download/v0.16.0/lamver_0.16.0_Linux_x86_64.tar.gz"
        sha256 "c32cfd65e463b77e2e983571bded8bd2057bdce57aa8e71069f8dead1b70f5ce"

        def install
          bin.install "lamver"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/go-to-k/lamver/releases/download/v0.16.0/lamver_0.16.0_Linux_arm64.tar.gz"
        sha256 "29568c35c88682f948eb575c74e071449e6250f9010ca4882eae9291e554aeb0"

        def install
          bin.install "lamver"
        end
      end
    end
  end

  test do
    system "#{bin}/lamver -v"
  end
end
