# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Api < Formula
  desc "A command line tool to work with API Specifications and code generation."
  homepage "https://github.com/boynton/api"
  version "0.5.1"
  license "Apache-2.0"

  depends_on "go"

  on_macos do
    on_intel do
      url "https://github.com/boynton/api/releases/download/v0.5.1/api_darwin_amd64.tar.gz"
      sha256 "ce1013d2724ad644b9fae8ee078894e71672fa38b55e9317ef964ff8485cd0fd"

      def install
        bin.install "api"
      end
    end
    on_arm do
      url "https://github.com/boynton/api/releases/download/v0.5.1/api_darwin_arm64.tar.gz"
      sha256 "0e11e02e8b0e94ffe9d832b5a0dbfcaf3092c66c25dea0fb9a1a20af2e578c1a"

      def install
        bin.install "api"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/boynton/api/releases/download/v0.5.1/api_linux_amd64.tar.gz"
        sha256 "faf7f7ad3995b61319facb35ecd2255813523f1bf629d091e8a262ccded0e67f"

        def install
          bin.install "api"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/boynton/api/releases/download/v0.5.1/api_linux_arm64.tar.gz"
        sha256 "0dcde9dcb42543f3fe1d643a035407efc121de70af26e81e357c3c5680aa6947"

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
