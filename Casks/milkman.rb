cask "milkman" do
  arch arm: "-aarch64", intel: "64"

  version "5.12.0"

  # The release workflow in warmuuh/milkman replaces both sha256 values on each
  # release. The arm value below is a placeholder until the first dual-arch
  # release (5.13.0) actually publishes macos-aarch64 artifacts.
  on_arm do
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end
  on_intel do
    sha256 "2c7b037d82d40ecf1465b9e09f6fef3da3ca1a1a090e751cfbb94d51473ade0f"
  end

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos#{arch}-bin.tgz"
  name "Milkman"
  desc "Extensible request and response workbench"
  homepage "https://github.com/warmuuh/milkman"

  depends_on :macos

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
