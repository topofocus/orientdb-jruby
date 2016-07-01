module OrientDB
  CORE = com.orientechnologies.orient.core
  CLIENT = com.orientechnologies.orient.client
  SERVER = com.orientechnologies.orient.server

  DocumentDatabase       = CORE.db.document.ODatabaseDocumentTx
  DocumentDatabasePool   = CORE.db.document.ODatabaseDocumentPool
  DocumentDatabasePooled = CORE.db.document.ODatabaseDocumentTxPooled
  GraphDatabase          = CORE.db.document.ODatabaseDocumentTx # = CORE.db.graph.OGraphDatabase
  OTraverse              = CORE.command.traverse.OTraverse
  RidBag		 = CORE.db.record.ridbag.ORidBag
#    db.record.Ridbag::ORidbag
  Document               = CORE.record.impl.ODocument
  IndexType              = CORE.metadata.schema.OClass::INDEX_TYPE
  OClassImpl             = CORE.metadata.schema.OClassImpl
  PropertyImpl           = CORE.metadata.schema.OPropertyImpl
  RecordList             = CORE.db.record.ORecordTrackedList
  RecordSet              = CORE.db.record.ORecordTrackedSet
  Schema                 = CORE.metadata.schema.OSchema
  SchemaProxy            = CORE.metadata.schema.OSchemaProxy
  SchemaType             = CORE.metadata.schema.OType
  SQLCommand             = CORE.sql.OCommandSQL
  SQLSynchQuery          = CORE.sql.query.OSQLSynchQuery
  User                   = CORE.metadata.security.OUser
  RemoteStorage          = CLIENT.remote.OStorageRemote
  ServerAdmin	         = CLIENT.remote.OServerAdmin
  JavaDate		 = Java::JavaUtil::Date

  #Blueprints
  BLUEPRINTS = com.tinkerpop.blueprints

  #Gremlin
  Gremlin = com.tinkerpop.gremlin.java

  OrientGraph = BLUEPRINTS.impls.orient.OrientGraph
  Conclusion = com.tinkerpop.blueprints.TransactionalGraph::Conclusion


  INDEX_TYPES   = IndexType.constants.inject({ }) { |h, s| h[s.downcase.to_sym] = IndexType.const_get s; h }
  FIELD_TYPES   = SchemaType.constants.inject({ }) { |h, s| h[s.downcase.to_sym] = SchemaType.const_get s; h }
  {
    :bool          => "BOOLEAN",
    :double        => "BYTE",
    :datetime      => "DATE",
    :float         => "FLOAT",
    :decimal       => "DECIMAL",
    :embedded_list => "EMBEDDEDLIST",
    :list          => "EMBEDDEDLIST",
    :embedded_map  => "EMBEDDEDMAP",
    :map           => "EMBEDDEDMAP",
    :embedded_set  => "EMBEDDEDSET",
    :set           => "EMBEDDEDSET",
    :int           => "INTEGER",
    :integer       => "INTEGER",
    :link_list     => "LINKLIST",
    :link_map      => "LINKMAP",
    :link_set      => "LINKSET",
  }.map do |k,v|
    FIELD_TYPES[k] = SchemaType.const_get(v) unless FIELD_TYPES.key?(k)
  end


end
