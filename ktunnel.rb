# This file was generated by GoReleaser. DO NOT EDIT.
class Ktunnel < Formula
  desc "Network tunneling tool for kubernetes."
  homepage "https://github.com/omrikiei/ktunnel"
  version "1.1.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/omrikiei/ktunnel/releases/download/v1.1.4/ktunnel_1.1.4_Darwin_x86_64.tar.gz"
    sha256 "4c770802a4d0c14b051e877a2d4f91ed5cdc83a6ea0a0e7b45f7fa34a1814bcc"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/omrikiei/ktunnel/releases/download/v1.1.4/ktunnel_1.1.4_Linux_x86_64.tar.gz"
      sha256 "da7e3cf49d396be46f598ea091c9afee47cb48be57a3cc6f4e083a64d55dbe4a"
    end
  end
  
  head "https://github.com/omrikiei/ktunnel.git"
  ...

  def install
    bin.install "ktunnel"
  end

  test do
    system "#{bin}/program version"
    ...
  end
end