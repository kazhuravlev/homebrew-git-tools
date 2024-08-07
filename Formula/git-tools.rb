# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitTools < Formula
  desc "Git tools allow you to manage your git repository easily."
  homepage "https://github.com/kazhuravlev/git-tools"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazhuravlev/git-tools/releases/download/v0.11.0/git-tools_Darwin_arm64.tar.gz"
      sha256 "cc6ac2ed890bd3ccf0aeae560f5549e353e0b7768c9cc4302de6f51898dc233a"

      def install
        bin.install "gt"
      end
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kazhuravlev/git-tools/releases/download/v0.11.0/git-tools_Linux_arm64.tar.gz"
        sha256 "6108bffbeddafaf8fe35b59a9063c7bbf764c0a5c69eea98a2acd8cadab41173"

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
