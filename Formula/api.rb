# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Api < Formula
  desc "A command line tool to work with API Specifications and code generation."
  homepage "https://github.com/boynton/api"
  version "0.3.6"
  license "Apache-2.0"

  depends_on "go"

  on_macos do
    on_intel do
      url "https://github.com/boynton/api/releases/download/v0.3.6/api_darwin_amd64.tar.gz"
      sha256 "9a71febe3c1cf055fc6c540454800e65c034d7ef8a37988db89e053053e1e708"

      def install
        bin.install "api"
      end
    end
    on_arm do
      url "https://github.com/boynton/api/releases/download/v0.3.6/api_darwin_arm64.tar.gz"
      sha256 "cbc265d335849d37bbbd9631122709fa8f83839e94d27a04bbe0492579b4eb74"

      def install
        bin.install "api"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/boynton/api/releases/download/v0.3.6/api_linux_amd64.tar.gz"
        sha256 "b4ea080f1d538ab92f6841ec9b21fd1e5d4d26714c2906b5a780b36faec8e4f5"

        def install
          bin.install "api"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/boynton/api/releases/download/v0.3.6/api_linux_arm64.tar.gz"
        sha256 "0d867d846c407abb7f574af2bf814c16f4333b3ab7c03d26ffc5d9a5f9be92cc"

        def install
          bin.install "api"
        end
      end
    end
  end

  test do
    system "#{bin}/program -v"
  end
end
