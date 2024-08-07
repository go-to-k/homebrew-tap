# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Delstack < Formula
  desc "delstack"
  homepage "https://github.com/go-to-k/delstack"
  version "1.11.0"

  on_macos do
    on_intel do
      url "https://github.com/go-to-k/delstack/releases/download/v1.11.0/delstack_1.11.0_Darwin_x86_64.tar.gz"
      sha256 "0df532a80a939a5081372152e960e1af66e0cadb9857f8e097fd939531cd0f85"

      def install
        bin.install "delstack"
      end
    end
    on_arm do
      url "https://github.com/go-to-k/delstack/releases/download/v1.11.0/delstack_1.11.0_Darwin_arm64.tar.gz"
      sha256 "0e1b629a6175de1da3028a8a12fe62c0045b11808fc3e5969dcf70351f649541"

      def install
        bin.install "delstack"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/go-to-k/delstack/releases/download/v1.11.0/delstack_1.11.0_Linux_x86_64.tar.gz"
        sha256 "99d6bdc82bc9d42887c148371972dd94bd9941356688f2e128c58209433c6ab3"

        def install
          bin.install "delstack"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/go-to-k/delstack/releases/download/v1.11.0/delstack_1.11.0_Linux_arm64.tar.gz"
        sha256 "849de6139d1cd0bb8a92a7ad9e28d154f50274189f544f812e9f206aae43180e"

        def install
          bin.install "delstack"
        end
      end
    end
  end

  test do
    system "#{bin}/delstack -v"
  end
end
