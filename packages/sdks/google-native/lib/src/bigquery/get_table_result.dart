// ignore_for_file: unused_element, unnecessary_cast

import 'big_lake_configuration_response.dart';
import 'clone_definition_response.dart';
import 'clustering_response.dart';
import 'encryption_configuration_response.dart';
import 'external_data_configuration_response.dart';
import 'materialized_view_definition_response.dart';
import 'model_definition_response.dart';
import 'range_partitioning_response.dart';
import 'snapshot_definition_response.dart';
import 'streamingbuffer_response.dart';
import 'table_constraints_response.dart';
import 'table_reference_response.dart';
import 'table_schema_response.dart';
import 'time_partitioning_response.dart';
import 'view_definition_response.dart';

/// Result data returned by getTable.
class GetTableResult {
  /// [Optional] Specifies the configuration of a BigLake managed table.
  final BigLakeConfigurationResponse? biglakeConfiguration;
  /// Clone definition.
  final CloneDefinitionResponse? cloneDefinition;
  /// [Beta] Clustering specification for the table. Must be specified with partitioning, data in the table will be first partitioned and subsequently clustered.
  final ClusteringResponse? clustering;
  /// The time when this table was created, in milliseconds since the epoch.
  final String? creationTime;
  /// The default collation of the table.
  final String? defaultCollation;
  /// The default rounding mode of the table.
  final String? defaultRoundingMode;
  /// [Optional] A user-friendly description of this table.
  final String? description;
  /// Custom encryption configuration (e.g., Cloud KMS keys).
  final EncryptionConfigurationResponse? encryptionConfiguration;
  /// A hash of the table metadata. Used to ensure there were no concurrent modifications to the resource when attempting an update. Not guaranteed to change when the table contents or the fields numRows, numBytes, numLongTermBytes or lastModifiedTime change.
  final String? etag;
  /// [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created tables.
  final String? expirationTime;
  /// [Optional] Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  final ExternalDataConfigurationResponse? externalDataConfiguration;
  /// [Optional] A descriptive name for this table.
  final String? friendlyName;
  /// The type of the resource.
  final String? kind;
  /// The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  final Map<String, String>? labels;
  /// The time when this table was last modified, in milliseconds since the epoch.
  final String? lastModifiedTime;
  /// The geographic location where the table resides. This value is inherited from the dataset.
  final String? location;
  /// [Optional] Materialized view definition.
  final MaterializedViewDefinitionResponse? materializedView;
  /// [Optional] Max staleness of data that could be returned when table or materialized view is queried (formatted as Google SQL Interval type).
  final String? maxStaleness;
  /// [Output-only, Beta] Present iff this table represents a ML model. Describes the training information for the model, and it is required to run 'PREDICT' queries.
  final ModelDefinitionResponse? model;
  /// Number of logical bytes that are less than 90 days old.
  final String? numActiveLogicalBytes;
  /// Number of physical bytes less than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  final String? numActivePhysicalBytes;
  /// The size of this table in bytes, excluding any data in the streaming buffer.
  final String? numBytes;
  /// The number of bytes in the table that are considered "long-term storage".
  final String? numLongTermBytes;
  /// Number of logical bytes that are more than 90 days old.
  final String? numLongTermLogicalBytes;
  /// Number of physical bytes more than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  final String? numLongTermPhysicalBytes;
  /// The number of partitions present in the table or materialized view. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  final String? numPartitions;
  /// [TrustedTester] The physical size of this table in bytes, excluding any data in the streaming buffer. This includes compression and storage used for time travel.
  final String? numPhysicalBytes;
  /// The number of rows of data in this table, excluding any data in the streaming buffer.
  final String? numRows;
  /// Number of physical bytes used by time travel storage (deleted or changed data). This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  final String? numTimeTravelPhysicalBytes;
  /// Total number of logical bytes in the table or materialized view.
  final String? numTotalLogicalBytes;
  /// The physical size of this table in bytes. This also includes storage used for time travel. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  final String? numTotalPhysicalBytes;
  /// [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  final RangePartitioningResponse? rangePartitioning;
  /// [Optional] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  final bool? requirePartitionFilter;
  /// [Optional] The tags associated with this table. Tag keys are globally unique. See additional information on [tags](https://cloud.google.com/iam/docs/tags-access-control#definitions). An object containing a list of "key": value pairs. The key is the namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is parent id. The value is the friendly short name of the tag value, e.g. "production".
  final Map<String, String>? resourceTags;
  /// [Optional] Describes the schema of this table.
  final TableSchemaResponse? schema;
  /// A URL that can be used to access this resource again.
  final String? selfLink;
  /// Snapshot definition.
  final SnapshotDefinitionResponse? snapshotDefinition;
  /// Contains information regarding this table's streaming buffer, if one is present. This field will be absent if the table is not being streamed to or if there is no data in the streaming buffer.
  final StreamingbufferResponse? streamingBuffer;
  /// [Optional] The table constraints on the table.
  final TableConstraintsResponse? tableConstraints;
  /// [Required] Reference describing the ID of this table.
  final TableReferenceResponse? tableReference;
  /// Time-based partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  final TimePartitioningResponse? timePartitioning;
  /// Describes the table type. The following values are supported: TABLE: A normal BigQuery table. VIEW: A virtual table defined by a SQL query. SNAPSHOT: An immutable, read-only table that is a copy of another table. [TrustedTester] MATERIALIZED_VIEW: SQL query whose result is persisted. EXTERNAL: A table that references data stored in an external storage system, such as Google Cloud Storage. The default value is TABLE.
  final String? type;
  /// [Optional] The view definition.
  final ViewDefinitionResponse? view;

  /// Creates a new [GetTableResult].
  /// [biglakeConfiguration] [Optional] Specifies the configuration of a BigLake managed table.
  /// [cloneDefinition] Clone definition.
  /// [clustering] [Beta] Clustering specification for the table. Must be specified with partitioning, data in the table will be first partitioned and subsequently clustered.
  /// [creationTime] The time when this table was created, in milliseconds since the epoch.
  /// [defaultCollation] The default collation of the table.
  /// [defaultRoundingMode] The default rounding mode of the table.
  /// [description] [Optional] A user-friendly description of this table.
  /// [encryptionConfiguration] Custom encryption configuration (e.g., Cloud KMS keys).
  /// [etag] A hash of the table metadata. Used to ensure there were no concurrent modifications to the resource when attempting an update. Not guaranteed to change when the table contents or the fields numRows, numBytes, numLongTermBytes or lastModifiedTime change.
  /// [expirationTime] [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created tables.
  /// [externalDataConfiguration] [Optional] Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  /// [friendlyName] [Optional] A descriptive name for this table.
  /// [kind] The type of the resource.
  /// [labels] The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  /// [lastModifiedTime] The time when this table was last modified, in milliseconds since the epoch.
  /// [location] The geographic location where the table resides. This value is inherited from the dataset.
  /// [materializedView] [Optional] Materialized view definition.
  /// [maxStaleness] [Optional] Max staleness of data that could be returned when table or materialized view is queried (formatted as Google SQL Interval type).
  /// [model] [Output-only, Beta] Present iff this table represents a ML model. Describes the training information for the model, and it is required to run 'PREDICT' queries.
  /// [numActiveLogicalBytes] Number of logical bytes that are less than 90 days old.
  /// [numActivePhysicalBytes] Number of physical bytes less than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  /// [numBytes] The size of this table in bytes, excluding any data in the streaming buffer.
  /// [numLongTermBytes] The number of bytes in the table that are considered "long-term storage".
  /// [numLongTermLogicalBytes] Number of logical bytes that are more than 90 days old.
  /// [numLongTermPhysicalBytes] Number of physical bytes more than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  /// [numPartitions] The number of partitions present in the table or materialized view. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  /// [numPhysicalBytes] [TrustedTester] The physical size of this table in bytes, excluding any data in the streaming buffer. This includes compression and storage used for time travel.
  /// [numRows] The number of rows of data in this table, excluding any data in the streaming buffer.
  /// [numTimeTravelPhysicalBytes] Number of physical bytes used by time travel storage (deleted or changed data). This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  /// [numTotalLogicalBytes] Total number of logical bytes in the table or materialized view.
  /// [numTotalPhysicalBytes] The physical size of this table in bytes. This also includes storage used for time travel. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  /// [rangePartitioning] [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  /// [requirePartitionFilter] [Optional] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  /// [resourceTags] [Optional] The tags associated with this table. Tag keys are globally unique. See additional information on [tags](https://cloud.google.com/iam/docs/tags-access-control#definitions). An object containing a list of "key": value pairs. The key is the namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is parent id. The value is the friendly short name of the tag value, e.g. "production".
  /// [schema] [Optional] Describes the schema of this table.
  /// [selfLink] A URL that can be used to access this resource again.
  /// [snapshotDefinition] Snapshot definition.
  /// [streamingBuffer] Contains information regarding this table's streaming buffer, if one is present. This field will be absent if the table is not being streamed to or if there is no data in the streaming buffer.
  /// [tableConstraints] [Optional] The table constraints on the table.
  /// [tableReference] [Required] Reference describing the ID of this table.
  /// [timePartitioning] Time-based partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  /// [type] Describes the table type. The following values are supported: TABLE: A normal BigQuery table. VIEW: A virtual table defined by a SQL query. SNAPSHOT: An immutable, read-only table that is a copy of another table. [TrustedTester] MATERIALIZED_VIEW: SQL query whose result is persisted. EXTERNAL: A table that references data stored in an external storage system, such as Google Cloud Storage. The default value is TABLE.
  /// [view] [Optional] The view definition.
  const GetTableResult({
    this.biglakeConfiguration,
    this.cloneDefinition,
    this.clustering,
    this.creationTime,
    this.defaultCollation,
    this.defaultRoundingMode,
    this.description,
    this.encryptionConfiguration,
    this.etag,
    this.expirationTime,
    this.externalDataConfiguration,
    this.friendlyName,
    this.kind,
    this.labels,
    this.lastModifiedTime,
    this.location,
    this.materializedView,
    this.maxStaleness,
    this.model,
    this.numActiveLogicalBytes,
    this.numActivePhysicalBytes,
    this.numBytes,
    this.numLongTermBytes,
    this.numLongTermLogicalBytes,
    this.numLongTermPhysicalBytes,
    this.numPartitions,
    this.numPhysicalBytes,
    this.numRows,
    this.numTimeTravelPhysicalBytes,
    this.numTotalLogicalBytes,
    this.numTotalPhysicalBytes,
    this.rangePartitioning,
    this.requirePartitionFilter,
    this.resourceTags,
    this.schema,
    this.selfLink,
    this.snapshotDefinition,
    this.streamingBuffer,
    this.tableConstraints,
    this.tableReference,
    this.timePartitioning,
    this.type,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biglakeConfiguration': ?biglakeConfiguration?.toMap(),
      'cloneDefinition': ?cloneDefinition?.toMap(),
      'clustering': ?clustering?.toMap(),
      'creationTime': ?creationTime,
      'defaultCollation': ?defaultCollation,
      'defaultRoundingMode': ?defaultRoundingMode,
      'description': ?description,
      'encryptionConfiguration': ?encryptionConfiguration?.toMap(),
      'etag': ?etag,
      'expirationTime': ?expirationTime,
      'externalDataConfiguration': ?externalDataConfiguration?.toMap(),
      'friendlyName': ?friendlyName,
      'kind': ?kind,
      'labels': ?labels,
      'lastModifiedTime': ?lastModifiedTime,
      'location': ?location,
      'materializedView': ?materializedView?.toMap(),
      'maxStaleness': ?maxStaleness,
      'model': ?model?.toMap(),
      'numActiveLogicalBytes': ?numActiveLogicalBytes,
      'numActivePhysicalBytes': ?numActivePhysicalBytes,
      'numBytes': ?numBytes,
      'numLongTermBytes': ?numLongTermBytes,
      'numLongTermLogicalBytes': ?numLongTermLogicalBytes,
      'numLongTermPhysicalBytes': ?numLongTermPhysicalBytes,
      'numPartitions': ?numPartitions,
      'numPhysicalBytes': ?numPhysicalBytes,
      'numRows': ?numRows,
      'numTimeTravelPhysicalBytes': ?numTimeTravelPhysicalBytes,
      'numTotalLogicalBytes': ?numTotalLogicalBytes,
      'numTotalPhysicalBytes': ?numTotalPhysicalBytes,
      'rangePartitioning': ?rangePartitioning?.toMap(),
      'requirePartitionFilter': ?requirePartitionFilter,
      'resourceTags': ?resourceTags,
      'schema': ?schema?.toMap(),
      'selfLink': ?selfLink,
      'snapshotDefinition': ?snapshotDefinition?.toMap(),
      'streamingBuffer': ?streamingBuffer?.toMap(),
      'tableConstraints': ?tableConstraints?.toMap(),
      'tableReference': ?tableReference?.toMap(),
      'timePartitioning': ?timePartitioning?.toMap(),
      'type': ?type,
      'view': ?view?.toMap(),
    };
  }

  factory GetTableResult.fromMap(Map<String, dynamic> map) {
    return GetTableResult(
      biglakeConfiguration: (() { final guardedValue = map['biglakeConfiguration']; if (guardedValue == null) return null; return BigLakeConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cloneDefinition: (() { final guardedValue = map['cloneDefinition']; if (guardedValue == null) return null; return CloneDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      clustering: (() { final guardedValue = map['clustering']; if (guardedValue == null) return null; return ClusteringResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultCollation: (() { final guardedValue = map['defaultCollation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultRoundingMode: (() { final guardedValue = map['defaultRoundingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return EncryptionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalDataConfiguration: (() { final guardedValue = map['externalDataConfiguration']; if (guardedValue == null) return null; return ExternalDataConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      materializedView: (() { final guardedValue = map['materializedView']; if (guardedValue == null) return null; return MaterializedViewDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      maxStaleness: (() { final guardedValue = map['maxStaleness']; if (guardedValue == null) return null; return guardedValue as String; })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return ModelDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      numActiveLogicalBytes: (() { final guardedValue = map['numActiveLogicalBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numActivePhysicalBytes: (() { final guardedValue = map['numActivePhysicalBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numBytes: (() { final guardedValue = map['numBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numLongTermBytes: (() { final guardedValue = map['numLongTermBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numLongTermLogicalBytes: (() { final guardedValue = map['numLongTermLogicalBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numLongTermPhysicalBytes: (() { final guardedValue = map['numLongTermPhysicalBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numPartitions: (() { final guardedValue = map['numPartitions']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numPhysicalBytes: (() { final guardedValue = map['numPhysicalBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numRows: (() { final guardedValue = map['numRows']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numTimeTravelPhysicalBytes: (() { final guardedValue = map['numTimeTravelPhysicalBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numTotalLogicalBytes: (() { final guardedValue = map['numTotalLogicalBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numTotalPhysicalBytes: (() { final guardedValue = map['numTotalPhysicalBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rangePartitioning: (() { final guardedValue = map['rangePartitioning']; if (guardedValue == null) return null; return RangePartitioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      requirePartitionFilter: (() { final guardedValue = map['requirePartitionFilter']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceTags: (() { final guardedValue = map['resourceTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return TableSchemaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotDefinition: (() { final guardedValue = map['snapshotDefinition']; if (guardedValue == null) return null; return SnapshotDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      streamingBuffer: (() { final guardedValue = map['streamingBuffer']; if (guardedValue == null) return null; return StreamingbufferResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tableConstraints: (() { final guardedValue = map['tableConstraints']; if (guardedValue == null) return null; return TableConstraintsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tableReference: (() { final guardedValue = map['tableReference']; if (guardedValue == null) return null; return TableReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timePartitioning: (() { final guardedValue = map['timePartitioning']; if (guardedValue == null) return null; return TimePartitioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return ViewDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
