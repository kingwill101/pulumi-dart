// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_lake_configuration.dart';
import 'clustering.dart';
import 'encryption_configuration.dart';
import 'external_data_configuration.dart';
import 'materialized_view_definition.dart';
import 'model_definition.dart';
import 'range_partitioning.dart';
import 'table_constraints.dart';
import 'table_reference.dart';
import 'table_schema.dart';
import 'time_partitioning.dart';
import 'view_definition.dart';

/// {@template pulumi_bigquery_v2_table_args_doc}
/// The set of arguments for Table.
/// {@endtemplate}
/// {@macro pulumi_bigquery_v2_table_args_doc}
class TableArgs {
  /// [Optional] Specifies the configuration of a BigLake managed table.
  final pulumi.Input<BigLakeConfiguration>? biglakeConfiguration;
  /// [Beta] Clustering specification for the table. Must be specified with partitioning, data in the table will be first partitioned and subsequently clustered.
  final pulumi.Input<Clustering>? clustering;
  final pulumi.Input<String> datasetId;
  /// [Optional] A user-friendly description of this table.
  final pulumi.Input<String>? description;
  /// Custom encryption configuration (e.g., Cloud KMS keys).
  final pulumi.Input<EncryptionConfiguration>? encryptionConfiguration;
  /// [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created tables.
  final pulumi.Input<String>? expirationTime;
  /// [Optional] Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  final pulumi.Input<ExternalDataConfiguration>? externalDataConfiguration;
  /// [Optional] A descriptive name for this table.
  final pulumi.Input<String>? friendlyName;
  /// The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  final pulumi.Input<Map<String, String>>? labels;
  /// [Optional] Materialized view definition.
  final pulumi.Input<MaterializedViewDefinition>? materializedView;
  /// [Optional] Max staleness of data that could be returned when table or materialized view is queried (formatted as Google SQL Interval type).
  final pulumi.Input<String>? maxStaleness;
  /// [Output-only, Beta] Present iff this table represents a ML model. Describes the training information for the model, and it is required to run 'PREDICT' queries.
  final pulumi.Input<ModelDefinition>? model;
  final pulumi.Input<String>? project;
  /// [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  final pulumi.Input<RangePartitioning>? rangePartitioning;
  /// [Optional] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  final pulumi.Input<bool>? requirePartitionFilter;
  /// [Optional] The tags associated with this table. Tag keys are globally unique. See additional information on [tags](https://cloud.google.com/iam/docs/tags-access-control#definitions). An object containing a list of "key": value pairs. The key is the namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is parent id. The value is the friendly short name of the tag value, e.g. "production".
  final pulumi.Input<Map<String, String>>? resourceTags;
  /// [Optional] Describes the schema of this table.
  final pulumi.Input<TableSchema>? schema;
  /// [Optional] The table constraints on the table.
  final pulumi.Input<TableConstraints>? tableConstraints;
  /// [Required] Reference describing the ID of this table.
  final pulumi.Input<TableReference>? tableReference;
  /// Time-based partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  final pulumi.Input<TimePartitioning>? timePartitioning;
  /// [Optional] The view definition.
  final pulumi.Input<ViewDefinition>? view;

  /// Creates a new [TableArgs].
  /// [biglakeConfiguration] [Optional] Specifies the configuration of a BigLake managed table.
  /// [clustering] [Beta] Clustering specification for the table. Must be specified with partitioning, data in the table will be first partitioned and subsequently clustered.
  /// [datasetId] Required.
  /// [description] [Optional] A user-friendly description of this table.
  /// [encryptionConfiguration] Custom encryption configuration (e.g., Cloud KMS keys).
  /// [expirationTime] [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created tables.
  /// [externalDataConfiguration] [Optional] Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  /// [friendlyName] [Optional] A descriptive name for this table.
  /// [labels] The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  /// [materializedView] [Optional] Materialized view definition.
  /// [maxStaleness] [Optional] Max staleness of data that could be returned when table or materialized view is queried (formatted as Google SQL Interval type).
  /// [model] [Output-only, Beta] Present iff this table represents a ML model. Describes the training information for the model, and it is required to run 'PREDICT' queries.
  /// [project] Optional.
  /// [rangePartitioning] [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  /// [requirePartitionFilter] [Optional] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  /// [resourceTags] [Optional] The tags associated with this table. Tag keys are globally unique. See additional information on [tags](https://cloud.google.com/iam/docs/tags-access-control#definitions). An object containing a list of "key": value pairs. The key is the namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is parent id. The value is the friendly short name of the tag value, e.g. "production".
  /// [schema] [Optional] Describes the schema of this table.
  /// [tableConstraints] [Optional] The table constraints on the table.
  /// [tableReference] [Required] Reference describing the ID of this table.
  /// [timePartitioning] Time-based partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  /// [view] [Optional] The view definition.
  TableArgs({
    this.biglakeConfiguration,
    this.clustering,
    required this.datasetId,
    this.description,
    this.encryptionConfiguration,
    this.expirationTime,
    this.externalDataConfiguration,
    this.friendlyName,
    this.labels,
    this.materializedView,
    this.maxStaleness,
    this.model,
    this.project,
    this.rangePartitioning,
    this.requirePartitionFilter,
    this.resourceTags,
    this.schema,
    this.tableConstraints,
    this.tableReference,
    this.timePartitioning,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biglakeConfiguration': ?pulumi.Input.mapOptionalInputValue<BigLakeConfiguration, Map<String, dynamic>>(biglakeConfiguration, (value) => value.toMap()),
      'clustering': ?pulumi.Input.mapOptionalInputValue<Clustering, Map<String, dynamic>>(clustering, (value) => value.toMap()),
      'datasetId': datasetId,
      'description': ?description,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<EncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'expirationTime': ?expirationTime,
      'externalDataConfiguration': ?pulumi.Input.mapOptionalInputValue<ExternalDataConfiguration, Map<String, dynamic>>(externalDataConfiguration, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'labels': ?labels,
      'materializedView': ?pulumi.Input.mapOptionalInputValue<MaterializedViewDefinition, Map<String, dynamic>>(materializedView, (value) => value.toMap()),
      'maxStaleness': ?maxStaleness,
      'model': ?pulumi.Input.mapOptionalInputValue<ModelDefinition, Map<String, dynamic>>(model, (value) => value.toMap()),
      'project': ?project,
      'rangePartitioning': ?pulumi.Input.mapOptionalInputValue<RangePartitioning, Map<String, dynamic>>(rangePartitioning, (value) => value.toMap()),
      'requirePartitionFilter': ?requirePartitionFilter,
      'resourceTags': ?resourceTags,
      'schema': ?pulumi.Input.mapOptionalInputValue<TableSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'tableConstraints': ?pulumi.Input.mapOptionalInputValue<TableConstraints, Map<String, dynamic>>(tableConstraints, (value) => value.toMap()),
      'tableReference': ?pulumi.Input.mapOptionalInputValue<TableReference, Map<String, dynamic>>(tableReference, (value) => value.toMap()),
      'timePartitioning': ?pulumi.Input.mapOptionalInputValue<TimePartitioning, Map<String, dynamic>>(timePartitioning, (value) => value.toMap()),
      'view': ?pulumi.Input.mapOptionalInputValue<ViewDefinition, Map<String, dynamic>>(view, (value) => value.toMap()),
    };
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      biglakeConfiguration: map['biglakeConfiguration'] == null ? null : (BigLakeConfiguration.fromMap((map['biglakeConfiguration']! as Map).cast<String, dynamic>())).input(),
      clustering: map['clustering'] == null ? null : (Clustering.fromMap((map['clustering']! as Map).cast<String, dynamic>())).input(),
      datasetId: (map['datasetId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : (EncryptionConfiguration.fromMap((map['encryptionConfiguration']! as Map).cast<String, dynamic>())).input(),
      expirationTime: map['expirationTime'] == null ? null : (map['expirationTime']! as String).input(),
      externalDataConfiguration: map['externalDataConfiguration'] == null ? null : (ExternalDataConfiguration.fromMap((map['externalDataConfiguration']! as Map).cast<String, dynamic>())).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      materializedView: map['materializedView'] == null ? null : (MaterializedViewDefinition.fromMap((map['materializedView']! as Map).cast<String, dynamic>())).input(),
      maxStaleness: map['maxStaleness'] == null ? null : (map['maxStaleness']! as String).input(),
      model: map['model'] == null ? null : (ModelDefinition.fromMap((map['model']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rangePartitioning: map['rangePartitioning'] == null ? null : (RangePartitioning.fromMap((map['rangePartitioning']! as Map).cast<String, dynamic>())).input(),
      requirePartitionFilter: map['requirePartitionFilter'] == null ? null : (map['requirePartitionFilter']! as bool).input(),
      resourceTags: map['resourceTags'] == null ? null : ((map['resourceTags']! as Map).cast<String, String>()).input(),
      schema: map['schema'] == null ? null : (TableSchema.fromMap((map['schema']! as Map).cast<String, dynamic>())).input(),
      tableConstraints: map['tableConstraints'] == null ? null : (TableConstraints.fromMap((map['tableConstraints']! as Map).cast<String, dynamic>())).input(),
      tableReference: map['tableReference'] == null ? null : (TableReference.fromMap((map['tableReference']! as Map).cast<String, dynamic>())).input(),
      timePartitioning: map['timePartitioning'] == null ? null : (TimePartitioning.fromMap((map['timePartitioning']! as Map).cast<String, dynamic>())).input(),
      view: map['view'] == null ? null : (ViewDefinition.fromMap((map['view']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

