# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Smithy < Formula
  desc "A Go-based tool to work with Smithy API Specifications."
  homepage "https://github.com/boynton/smithy"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/boynton/smithy/releases/download/v0.4.0/smithy_0.4.0_macOS_arm64.tar.gz"
      sha256 "ffa2e652b61cc4885f7d8c3982e9518c75d7a03da8aa60dc6b1632a0f2538103"

      def install
        bin.install "smithy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/boynton/smithy/releases/download/v0.4.0/smithy_0.4.0_macOS_x86_64.tar.gz"
      sha256 "88422667f9133eb4bce4f1d57ba468d4c96ecfbac31ac2ba3a8bf0e47239330b"

      def install
        bin.install "smithy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/boynton/smithy/releases/download/v0.4.0/smithy_0.4.0_Linux_arm64.tar.gz"
      sha256 "8ae8beb7b9079cc3710109d1888d18f4ae8eef35212267dfcf25a5b2de46fb7a"

      def install
        bin.install "smithy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/boynton/smithy/releases/download/v0.4.0/smithy_0.4.0_Linux_x86_64.tar.gz"
      sha256 "b306bd09fc24ac7f903fd274d3398415d352a27c8fbece4025f8fc9c9ae65b63"

      def install
        bin.install "smithy"
      end
    end
  end

  depends_on "go"

  test do
    system "#{bin}/program -v"
  end
end
