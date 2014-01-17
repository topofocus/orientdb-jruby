raise "OrieentDB-client only runs on JRuby. Sorry!" unless (RUBY_PLATFORM =~ /java/)

module OrientDB
  GEM_PATH = File.dirname File.expand_path(__FILE__) unless const_defined?(:GEM_PATH)
end

$: << OrientDB::GEM_PATH
$: << File.join(OrientDB::GEM_PATH, 'jars')

require 'java'
require "commons-configuration-1.6"

require "blueprints-core-SNAPSHOT"

require "orient-commons-1.7_SNAPSHOT"
require "orientdb-core-1.7_SNAPSHOT"
require "jna-4.0.0"
require "orientdb-nativeos-1.7-SNAPSHOT"
require "orientdb-client-1.7-SNAPSHOT"
require "orientdb-enterprise-1.7-SNAPSHOT"
require "orientdb-server-1.7-SNAPSHOT"
require "orientdb-tools-1.7-SNAPSHOT"
require "orientdb-graphdb-1.7-SNAPSHOT"

require "pipes-2.5.0-20131024.235509-5"
require "gremlin-java-2.5.0-20140112.160704-7"
require "gremlin-groovy-2.5.0-20140112.160755-7"

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
