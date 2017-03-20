class Spm < Formula
  desc "Salesforce Package Manager"
  homepage "https://github.com/tzmfreedom/spm"

  @@version = "0.2.0"
  version @@version

  if Hardware::CPU.is_64_bit?
    @@binname = 'spm-darwin-amd64'
    url "https://github.com/tzmfreedom/spm/releases/download/v#{@@version}/#{@@binname}"
    sha256 '9caf79ef99f33990c9394fc527fc4047578d4231221e4b7dd1b5b8b41c96730f'
  else
    @@binname = 'spm-darwin-386'
    url "https://github.com/tzmfreedom/spm/releases/download/v#{@@version}/#{@@binname}"
    sha256 'd64fbcbbd04c89a940b701befc9690018878d6661e3fa614c0bf29cd5d38432a'
  end

  def install
    mv @@binname, 'spm'
    bin.install 'spm'
  end

  test do
    system "false"
  end
end
