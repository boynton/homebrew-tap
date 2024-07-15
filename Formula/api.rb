# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Api < Formula
  desc "A command line tool to work with API Specifications and code generation."
  homepage "https://github.com/boynton/api"
  version "0.4.3"
  license "Apache-2.0"

  depends_on "go"

  on_macos do
    on_intel do
      url "https://github.com/boynton/api/releases/download/v0.4.3/api_darwin_amd64.tar.gz"
      sha256 "e30d5681481a0768fd71386cbd9d39049be7d763615fae3360acd848e39daba1"

      def install
        bin.install "api"
      end
    end
    on_arm do
      url "https://github.com/boynton/api/releases/download/v0.4.3/api_darwin_arm64.tar.gz"
      sha256 "435cde0803a23f748303d79a43c57439716ced67d5f92aeea676dce7847c52dc"

      def install
        bin.install "api"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/boynton/api/releases/download/v0.4.3/api_linux_amd64.tar.gz"
        sha256 "71f26dfd3162b10b4db506ddea85059904791b367f0769cd0f7479db6bd9e0c7"

        def install
          bin.install "api"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/boynton/api/releases/download/v0.4.3/api_linux_arm64.tar.gz"
        sha256 "75a6828e3cae874e4d1cef3324c055b29db4f23ba157c1d93d8a48f82474e479"

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
