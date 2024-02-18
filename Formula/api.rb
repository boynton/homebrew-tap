# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Api < Formula
  desc "A command line tool to work with API Specifications and code generation."
  homepage "https://github.com/boynton/api"
  version "0.1.0"
  license "Apache-2.0"

  depends_on "go"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/boynton/api/releases/download/v0.1.0/api_darwin_arm64.tar.gz"
      sha256 "7d2f3a5d7aff41a1ba24ad258b0fb999f9be523c46c446274b21dc2e73dd16a4"

      def install
        bin.install "api"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/boynton/api/releases/download/v0.1.0/api_darwin_amd64.tar.gz"
      sha256 "9002485cd22bacfde6973602fe74b85c6ebc42e9844b23a497077045c556d603"

      def install
        bin.install "api"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/boynton/api/releases/download/v0.1.0/api_linux_arm64.tar.gz"
      sha256 "fc8efa227de897e79ee52890e058199091d4ad0fa9499460ce57809e6fb969a4"

      def install
        bin.install "api"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/boynton/api/releases/download/v0.1.0/api_linux_amd64.tar.gz"
      sha256 "972d6a2731c2e5a9e723e4e398381fa6a060a4b7f60a7b34b0940254cb1d3f57"

      def install
        bin.install "api"
      end
    end
  end

  test do
    system "#{bin}/program -v"
  end
end
