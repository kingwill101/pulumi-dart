import 'package:pulumi/pulumi.dart' as pulumi;
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
import 'table_args.dart';
import 'table_constraints_response.dart';
import 'table_reference_response.dart';
import 'table_schema_response.dart';
import 'time_partitioning_response.dart';
import 'view_definition_response.dart';

/// Creates a new, empty table in the dataset.
/// Auto-naming is currently not supported for this resource.
class Table extends pulumi.CustomResource {
  /// [Optional] Specifies the configuration of a BigLake managed table.
  late final pulumi.Output<BigLakeConfigurationResponse> biglakeConfiguration;

  /// Clone definition.
  late final pulumi.Output<CloneDefinitionResponse> cloneDefinition;

  /// [Beta] Clustering specification for the table. Must be specified with partitioning, data in the table will be first partitioned and subsequently clustered.
  late final pulumi.Output<ClusteringResponse> clustering;

  /// The time when this table was created, in milliseconds since the epoch.
  late final pulumi.Output<String> creationTime;
  late final pulumi.Output<String> datasetId;

  /// The default collation of the table.
  late final pulumi.Output<String> defaultCollation;

  /// The default rounding mode of the table.
  late final pulumi.Output<String> defaultRoundingMode;

  /// [Optional] A user-friendly description of this table.
  late final pulumi.Output<String> description;

  /// Custom encryption configuration (e.g., Cloud KMS keys).
  late final pulumi.Output<EncryptionConfigurationResponse>
  encryptionConfiguration;

  /// A hash of the table metadata. Used to ensure there were no concurrent modifications to the resource when attempting an update. Not guaranteed to change when the table contents or the fields numRows, numBytes, numLongTermBytes or lastModifiedTime change.
  late final pulumi.Output<String> etag;

  /// [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created tables.
  late final pulumi.Output<String> expirationTime;

  /// [Optional] Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  late final pulumi.Output<ExternalDataConfigurationResponse>
  externalDataConfiguration;

  /// [Optional] A descriptive name for this table.
  late final pulumi.Output<String> friendlyName;

  /// The type of the resource.
  late final pulumi.Output<String> kind;

  /// The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  late final pulumi.Output<Map<String, String>> labels;

  /// The time when this table was last modified, in milliseconds since the epoch.
  late final pulumi.Output<String> lastModifiedTime;

  /// The geographic location where the table resides. This value is inherited from the dataset.
  late final pulumi.Output<String> location;

  /// [Optional] Materialized view definition.
  late final pulumi.Output<MaterializedViewDefinitionResponse> materializedView;

  /// [Optional] Max staleness of data that could be returned when table or materialized view is queried (formatted as Google SQL Interval type).
  late final pulumi.Output<String> maxStaleness;

  /// [Output-only, Beta] Present iff this table represents a ML model. Describes the training information for the model, and it is required to run 'PREDICT' queries.
  late final pulumi.Output<ModelDefinitionResponse> model;

  /// Number of logical bytes that are less than 90 days old.
  late final pulumi.Output<String> numActiveLogicalBytes;

  /// Number of physical bytes less than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  late final pulumi.Output<String> numActivePhysicalBytes;

  /// The size of this table in bytes, excluding any data in the streaming buffer.
  late final pulumi.Output<String> numBytes;

  /// The number of bytes in the table that are considered "long-term storage".
  late final pulumi.Output<String> numLongTermBytes;

  /// Number of logical bytes that are more than 90 days old.
  late final pulumi.Output<String> numLongTermLogicalBytes;

  /// Number of physical bytes more than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  late final pulumi.Output<String> numLongTermPhysicalBytes;

  /// The number of partitions present in the table or materialized view. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  late final pulumi.Output<String> numPartitions;

  /// [TrustedTester] The physical size of this table in bytes, excluding any data in the streaming buffer. This includes compression and storage used for time travel.
  late final pulumi.Output<String> numPhysicalBytes;

  /// The number of rows of data in this table, excluding any data in the streaming buffer.
  late final pulumi.Output<String> numRows;

  /// Number of physical bytes used by time travel storage (deleted or changed data). This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  late final pulumi.Output<String> numTimeTravelPhysicalBytes;

  /// Total number of logical bytes in the table or materialized view.
  late final pulumi.Output<String> numTotalLogicalBytes;

  /// The physical size of this table in bytes. This also includes storage used for time travel. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  late final pulumi.Output<String> numTotalPhysicalBytes;
  late final pulumi.Output<String> project;

  /// [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  late final pulumi.Output<RangePartitioningResponse> rangePartitioning;

  /// [Optional] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  late final pulumi.Output<bool> requirePartitionFilter;

  /// [Optional] The tags associated with this table. Tag keys are globally unique. See additional information on [tags](https://cloud.google.com/iam/docs/tags-access-control#definitions). An object containing a list of "key": value pairs. The key is the namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is parent id. The value is the friendly short name of the tag value, e.g. "production".
  late final pulumi.Output<Map<String, String>> resourceTags;

  /// [Optional] Describes the schema of this table.
  late final pulumi.Output<TableSchemaResponse> schema;

  /// A URL that can be used to access this resource again.
  late final pulumi.Output<String> selfLink;

  /// Snapshot definition.
  late final pulumi.Output<SnapshotDefinitionResponse> snapshotDefinition;

  /// Contains information regarding this table's streaming buffer, if one is present. This field will be absent if the table is not being streamed to or if there is no data in the streaming buffer.
  late final pulumi.Output<StreamingbufferResponse> streamingBuffer;

  /// [Optional] The table constraints on the table.
  late final pulumi.Output<TableConstraintsResponse> tableConstraints;

  /// [Required] Reference describing the ID of this table.
  late final pulumi.Output<TableReferenceResponse> tableReference;

  /// Time-based partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  late final pulumi.Output<TimePartitioningResponse> timePartitioning;

  /// Describes the table type. The following values are supported: TABLE: A normal BigQuery table. VIEW: A virtual table defined by a SQL query. SNAPSHOT: An immutable, read-only table that is a copy of another table. [TrustedTester] MATERIALIZED_VIEW: SQL query whose result is persisted. EXTERNAL: A table that references data stored in an external storage system, such as Google Cloud Storage. The default value is TABLE.
  late final pulumi.Output<String> type;

  /// [Optional] The view definition.
  late final pulumi.Output<ViewDefinitionResponse> view;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_bigquery_v2_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(String name, {TableArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:bigquery/v2:Table',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    biglakeConfiguration = registerOutput<BigLakeConfigurationResponse>(
      'biglakeConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BigLakeConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    cloneDefinition = registerOutput<CloneDefinitionResponse>(
      'cloneDefinition',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CloneDefinitionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    clustering = registerOutput<ClusteringResponse>(
      'clustering',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusteringResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    creationTime = registerOutput<String>('creationTime');
    datasetId = registerOutput<String>('datasetId');
    defaultCollation = registerOutput<String>('defaultCollation');
    defaultRoundingMode = registerOutput<String>('defaultRoundingMode');
    description = registerOutput<String>('description');
    encryptionConfiguration = registerOutput<EncryptionConfigurationResponse>(
      'encryptionConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EncryptionConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    etag = registerOutput<String>('etag');
    expirationTime = registerOutput<String>('expirationTime');
    externalDataConfiguration =
        registerOutput<ExternalDataConfigurationResponse>(
          'externalDataConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ExternalDataConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    friendlyName = registerOutput<String>('friendlyName');
    kind = registerOutput<String>('kind');
    labels = registerOutput<Map<String, String>>('labels');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    location = registerOutput<String>('location');
    materializedView = registerOutput<MaterializedViewDefinitionResponse>(
      'materializedView',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MaterializedViewDefinitionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    maxStaleness = registerOutput<String>('maxStaleness');
    model = registerOutput<ModelDefinitionResponse>(
      'model',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ModelDefinitionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    numActiveLogicalBytes = registerOutput<String>('numActiveLogicalBytes');
    numActivePhysicalBytes = registerOutput<String>('numActivePhysicalBytes');
    numBytes = registerOutput<String>('numBytes');
    numLongTermBytes = registerOutput<String>('numLongTermBytes');
    numLongTermLogicalBytes = registerOutput<String>('numLongTermLogicalBytes');
    numLongTermPhysicalBytes = registerOutput<String>(
      'numLongTermPhysicalBytes',
    );
    numPartitions = registerOutput<String>('numPartitions');
    numPhysicalBytes = registerOutput<String>('numPhysicalBytes');
    numRows = registerOutput<String>('numRows');
    numTimeTravelPhysicalBytes = registerOutput<String>(
      'numTimeTravelPhysicalBytes',
    );
    numTotalLogicalBytes = registerOutput<String>('numTotalLogicalBytes');
    numTotalPhysicalBytes = registerOutput<String>('numTotalPhysicalBytes');
    project = registerOutput<String>('project');
    rangePartitioning = registerOutput<RangePartitioningResponse>(
      'rangePartitioning',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RangePartitioningResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    requirePartitionFilter = registerOutput<bool>('requirePartitionFilter');
    resourceTags = registerOutput<Map<String, String>>('resourceTags');
    schema = registerOutput<TableSchemaResponse>(
      'schema',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableSchemaResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    selfLink = registerOutput<String>('selfLink');
    snapshotDefinition = registerOutput<SnapshotDefinitionResponse>(
      'snapshotDefinition',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SnapshotDefinitionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    streamingBuffer = registerOutput<StreamingbufferResponse>(
      'streamingBuffer',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StreamingbufferResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tableConstraints = registerOutput<TableConstraintsResponse>(
      'tableConstraints',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableConstraintsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tableReference = registerOutput<TableReferenceResponse>(
      'tableReference',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableReferenceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    timePartitioning = registerOutput<TimePartitioningResponse>(
      'timePartitioning',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TimePartitioningResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    view = registerOutput<ViewDefinitionResponse>(
      'view',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ViewDefinitionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
