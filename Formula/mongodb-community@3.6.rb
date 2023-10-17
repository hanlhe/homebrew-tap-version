class MongodbCommunityAT36 < Formula
  desc "High-performance, schema-free, document-oriented database"
  homepage "https://www.mongodb.com/"

  # frozen_string_literal: true

  url "https://fastdl.mongodb.org/osx/mongodb-osx-ssl-x86_64-3.6.23.tgz"
  sha256 "f75883dae932590201b8e36b2591da4f267cf56cbc57755b389b76c1fe3d5b31"

  option "with-enable-test-commands", "Configures MongoDB to allow test commands such as failpoints"

  keg_only :versioned_formula

  def install
    prefix.install Dir["*"]
  end
  
  test do
    system "#{bin}/mongod", "--sysinfo"
  end
end
