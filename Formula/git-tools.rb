# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitTools < Formula
  desc "Git tools allow you to manage your git repository easily."
  homepage "https://github.com/kazhuravlev/git-tools"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazhuravlev/git-tools/releases/download/v0.7.0/git-tools_Darwin_arm64.tar.gz"
      sha256 "22cced97271b36281818cb532023e057e9219b97dabb1813ca065dea12b365ee"

      def install
        bin.install "gt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kazhuravlev/git-tools/releases/download/v0.7.0/git-tools_Linux_arm64.tar.gz"
      sha256 "2d13eb4a29d0913bc1f17fc8f0cbdb17ca3f4c974a9ccccc189eb44beae9a61d"

      def install
        bin.install "gt"
      end
    end
  end

  test do
    system "#{bin}/gt help"
  end
end
