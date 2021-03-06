class Repo < Formula
  desc "Repository tool for Android development"
  homepage "https://source.android.com/source/developing.html"
  url "https://github.com/GerritCodeReview/git-repo.git",
      :tag      => "v2.7",
      :revision => "dbfbcb14c162ef8233a5a13a462ba86f5b99921a"
  version_scheme 1

  bottle :unneeded

  def install
    bin.install "repo"
    doc.install (buildpath/"docs").children
  end

  test do
    assert_match "usage:", shell_output("#{bin}/repo help 2>&1")
  end
end
