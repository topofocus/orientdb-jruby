raise "OrieentDB-client only runs on JRuby. Sorry!" unless (RUBY_PLATFORM =~ /java/)

module OrientDB
  GEM_PATH = File.dirname File.expand_path(__FILE__) unless const_defined?(:GEM_PATH)
end

$: << OrientDB::GEM_PATH
$: << File.join(OrientDB::GEM_PATH, 'jars')

OrientDB_Version = '2.2.2'
TinkerPop_Version = '2.6.0'
JNA_Version = '4.0.0'
ConcurrentLinkedHashMap_Version = '1.4.1'
Groovy_Version = '1.8.9'
CommonsConfiguration_Version = '1.6'

require 'java'

require "orientdb-core-#{ OrientDB_Version }.jar"
require "orientdb-object-#{ OrientDB_Version }.jar"
require "blueprints-core-#{ TinkerPop_Version }.jar"
require "orientdb-graphdb-#{ OrientDB_Version }.jar"

require "jna-#{ JNA_Version }.jar"
require "jna-platform-#{ JNA_Version }.jar"
require "concurrentlinkedhashmap-lru-#{ ConcurrentLinkedHashMap_Version }.jar"

require "orientdb-client-#{ OrientDB_Version }.jar"
require "orientdb-distributed-#{ OrientDB_Version }.jar"
#require "orientdb-enterprise-#{ OrientDB_Version }.jar"
require "orientdb-tools-#{ OrientDB_Version }.jar"

require "pipes-#{ TinkerPop_Version }.jar"
require "gremlin-java-#{ TinkerPop_Version }.jar"
require "gremlin-groovy-#{ TinkerPop_Version }.jar"
require "groovy-#{ Groovy_Version }.jar"
require "commons-configuration-#{ CommonsConfiguration_Version }.jar"

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
