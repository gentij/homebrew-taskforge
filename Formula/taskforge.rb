class Taskforge < Formula
  desc "Taskforge CLI"
  homepage "https://github.com/gentij/taskforge"
  version "0.0.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/gentij/taskforge/releases/download/v0.0.0/taskforge_darwin_arm64"
      sha256 "PUT_SHA256_HERE"
    else
      url "https://github.com/gentij/taskforge/releases/download/v0.0.0/taskforge_darwin_amd64"
      sha256 "PUT_SHA256_HERE"
    end
  elsif OS.linux?
    url "https://github.com/gentij/taskforge/releases/download/v0.0.0/taskforge_linux_amd64"
    sha256 "PUT_SHA256_HERE"
  end

  def install
    bin.install "taskforge"
  end

  test do
    system "#{bin}/taskforge", "version"
  end
end
