class Helptransl8 < Formula
  desc      'HelpTrans8 is a tool for documentation translators'
  homepage  'https://github.com/papilip/helptransl8'
  url       'https://github.com/papilip/helptransl8/archive/v0.0.1.tar.gz'
  # version   '0.0.0'
  sha256    '68eafac2c1b9fbb4fc36e74fbec0066231b39dbfc8b79102edcf58979afad49e'
  # revision  0

  depends_on 'sha2'
  depends_on 'crystal-lang'

  def install
    system 'crystal', 'build', '--release', 'src/helptransl8.cr'
    bin.install 'helptransl8'
  end

  test do
    system "false"
  end
end
