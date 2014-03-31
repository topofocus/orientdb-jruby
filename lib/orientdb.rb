raise "OrieentDB-client only runs on JRuby. Sorry!" unless (RUBY_PLATFORM =~ /java/)

module OrientDB
  GEM_PATH = File.dirname File.expand_path(__FILE__) unless const_defined?(:GEM_PATH)
end

$: << OrientDB::GEM_PATH
$: << File.join(OrientDB::GEM_PATH, 'jars')

require 'java'

require 'antlr-2.7.7.jar'
require 'asm-3.2.jar'
require 'blueprints-core-2.5.0-20140320.105052-37.jar'
require 'commons-configuration-1.6.jar'
require 'concurrentlinkedhashmap-lru-1.4.jar'
require 'gremlin-groovy-2.5.0-20140125.153413-8.jar'
require 'gremlin-java-2.5.0-20140125.153323-8.jar'
require 'groovy-1.8.9.jar'
require 'jansi-1.5.jar'
require 'javassist-3.16.1-GA.jar'
require 'jna-4.0.0.jar'
require 'jna-platform-4.0.0.jar'
require 'mail-1.4.jar'
require 'orient-commons-1.7-rc2.jar'
require 'orientdb-client-1.7-rc2.jar'
require 'orientdb-core-1.7-rc2.jar'
require 'orientdb-distributed-1.7-rc2.jar'
require 'orientdb-enterprise-1.7-rc2.jar'
require 'orientdb-graphdb-1.7-rc2.jar'
require 'orientdb-nativeos-1.7-rc2.jar'
require 'orientdb-object-1.7-rc2.jar'
require 'orientdb-server-1.7-rc2.jar'
require 'orientdb-tools-1.7-rc2.jar'
require 'pipes-2.5.0-20140125.162807-6.jar'
require 'sesame-model-2.6.10.jar'
require 'sesame-query-2.6.10.jar'
require 'sesame-rio-api-2.6.10.jar'
require 'sesame-sail-api-2.6.10.jar'
require 'snappy-0.3.jar'


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
