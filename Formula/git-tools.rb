# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitTools < Formula
  desc "Git tools allow you to manage your git repository easily."
  homepage "https://github.com/kazhuravlev/git-tools"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazhuravlev/git-tools/releases/download/v0.12.1/git-tools_Darwin_arm64.tar.gz"
      sha256 "d205dda1e88a1ff5a78dab599dc401da104935c5c6646e07f632af80c01ac167"

      def install
        bin.install "gt"
      end
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kazhuravlev/git-tools/releases/download/v0.12.1/git-tools_Linux_arm64.tar.gz"
        sha256 "110877c2c9bc17c14eaf0d61171d6a80d066ff84b1198e1aa66993a4b83f0ed6"

        def install
          bin.install "gt"
        end
      end
    end
  end

  test do
    system "#{bin}/gt help"
  end
end
