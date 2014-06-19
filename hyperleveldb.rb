require 'formula'

class Hyperleveldb < Formula
  homepage 'http://influxdb.com/'
  url 'https://github.com/influxdb/HyperLevelDB/archive/v1.0.3.tar.gz'
  sha1 'e1a58774d19327788799fed873ca9b7f9065090d'

  def install
    ENV['PKG_CONFIG_PATH']="#{HOMEBREW_PREFIX}/lib/pkgconfig"
    ENV['PATH'] = "/usr/local/bin:#{ENV['PATH']}"
    system "autoreconf -i"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end

