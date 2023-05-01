# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Crpreview < Formula
  desc "Preview script for the lf file manager"
  homepage "https://github.com/RisGar/crpreview"
  url "https://github.com/RisGar/crpreview/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "4a6f3679ec277dc36748148745e7e6dfd3e3f2168e92363c1c1085f307f476cc"
  version "0.2.0"
  license "EUPL-v1.2"

  depends_on "crystal" => :build
  depends_on "libarchive"
  depends_on "chafa"
  depends_on "imagemagick"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "shards", "build", "--release"
    bin.install "bin/crpreview"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test crpreview`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end

