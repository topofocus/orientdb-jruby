raise "OrieentDB-client only runs on JRuby. Sorry!" unless (RUBY_PLATFORM =~ /java/)

module OrientDB
  GEM_PATH = File.dirname File.expand_path(__FILE__) unless const_defined?(:GEM_PATH)
end

$: << OrientDB::GEM_PATH
$: << File.join(OrientDB::GEM_PATH, 'jars')

require 'java'

require 'antlr-2.7.7.jar'
require 'asm-3.2.jar'
require 'blueprints-core-2.6.0.jar'
require 'commons-configuration-1.6.jar'
require 'concurrentlinkedhashmap-lru-1.4.jar'
require 'gremlin-groovy-2.6.0.jar'
require 'gremlin-java-2.6.0.jar'
require 'groovy-1.8.9.jar'
require 'jansi-1.5.jar'
require 'javassist-3.16.1-GA.jar'
require 'jna-4.0.0.jar'
require 'jna-platform-4.0.0.jar'
require 'orientdb-client-2.0-rc1.jar'
require 'orientdb-core-2.0-rc1.jar'
require 'orientdb-distributed-2.0-rc1.jar'
require 'orientdb-enterprise-2.0-rc1.jar'
require 'orientdb-graphdb-2.0-rc1.jar'
require 'orientdb-object-2.0-rc1.jar'
require 'orientdb-server-2.0-rc1.jar'
require 'pipes-2.6.0.jar'
require 'snappy-java-1.1.0.1.jar'


require 'orientdb/version'
require 'orientdb/ext'
require 'orientdb/rid'
require 'orientdb/constants'
require 'orientdb/property'
require 'orientdb/schema'
require 'orientdb/storage'
require 'orientdb/database'
require 'orientdb/record'
require 'orientdb/document'
require 'orientdb/sql'
require 'orientdb/oclass'
