# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitTools < Formula
  desc "Git tools allow you to manage your git repository easily."
  homepage "https://github.com/kazhuravlev/git-tools"
  version "0.5.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazhuravlev/git-tools/releases/download/v0.5.9/git-tools_Darwin_arm64.tar.gz"
      sha256 "66dc3678ae974878297c350bcaab1db8f78a1b1458bf74815f8643988ffc0659"

      def install
        bin.install "gt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kazhuravlev/git-tools/releases/download/v0.5.9/git-tools_Linux_arm64.tar.gz"
      sha256 "022737eb72239c254e8403344a8b2f258f44710ec051b74a2248ad56e26e743d"

      def install
        bin.install "gt"
      end
    end
  end

  test do
    system "#{bin}/gt help"
  end
end
