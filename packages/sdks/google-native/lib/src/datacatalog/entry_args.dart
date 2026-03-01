// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_type.dart';
import 'google_cloud_datacatalog_v1_business_context.dart';
import 'google_cloud_datacatalog_v1_cloud_bigtable_system_spec.dart';
import 'google_cloud_datacatalog_v1_database_table_spec.dart';
import 'google_cloud_datacatalog_v1_dataset_spec.dart';
import 'google_cloud_datacatalog_v1_fileset_spec.dart';
import 'google_cloud_datacatalog_v1_gcs_fileset_spec.dart';
import 'google_cloud_datacatalog_v1_looker_system_spec.dart';
import 'google_cloud_datacatalog_v1_model_spec.dart';
import 'google_cloud_datacatalog_v1_routine_spec.dart';
import 'google_cloud_datacatalog_v1_schema.dart';
import 'google_cloud_datacatalog_v1_service_spec.dart';
import 'google_cloud_datacatalog_v1_sql_database_system_spec.dart';
import 'google_cloud_datacatalog_v1_system_timestamps.dart';
import 'google_cloud_datacatalog_v1_usage_signal.dart';

/// {@template pulumi_datacatalog_v1_entry_args_doc}
/// The set of arguments for Entry.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_entry_args_doc}
class EntryArgs {
  /// Business Context of the entry. Not supported for BigQuery datasets
  final pulumi.Input<GoogleCloudDatacatalogV1BusinessContext>? businessContext;
  /// Specification that applies to Cloud Bigtable system. Only settable when `integrated_system` is equal to `CLOUD_BIGTABLE`
  final pulumi.Input<GoogleCloudDatacatalogV1CloudBigtableSystemSpec>? cloudBigtableSystemSpec;
  /// Specification that applies to a data source connection. Valid only for entries with the `DATA_SOURCE_CONNECTION` type.
  final pulumi.Input<Map<String, dynamic>>? dataSourceConnectionSpec;
  /// Specification that applies to a table resource. Valid only for entries with the `TABLE` or `EXPLORE` type.
  final pulumi.Input<GoogleCloudDatacatalogV1DatabaseTableSpec>? databaseTableSpec;
  /// Specification that applies to a dataset.
  final pulumi.Input<GoogleCloudDatacatalogV1DatasetSpec>? datasetSpec;
  /// Entry description that can consist of several sentences or paragraphs that describe entry contents. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). The maximum size is 2000 bytes when encoded in UTF-8. Default value is an empty string.
  final pulumi.Input<String>? description;
  /// Display name of an entry. The maximum size is 500 bytes when encoded in UTF-8. Default value is an empty string.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String> entryGroupId;
  /// Required. The ID of the entry to create. The ID must contain only letters (a-z, A-Z), numbers (0-9), and underscores (_). The maximum size is 64 bytes when encoded in UTF-8.
  final pulumi.Input<String> entryId;
  /// Specification that applies to a fileset resource. Valid only for entries with the `FILESET` type.
  final pulumi.Input<GoogleCloudDatacatalogV1FilesetSpec>? filesetSpec;
  /// [Fully Qualified Name (FQN)](https://cloud.google.com//data-catalog/docs/fully-qualified-names) of the resource. Set automatically for entries representing resources from synced systems. Settable only during creation, and read-only later. Can be used for search and lookup of the entries.
  final pulumi.Input<String>? fullyQualifiedName;
  /// Specification that applies to a Cloud Storage fileset. Valid only for entries with the `FILESET` type.
  final pulumi.Input<GoogleCloudDatacatalogV1GcsFilesetSpec>? gcsFilesetSpec;
  /// Cloud labels attached to the entry. In Data Catalog, you can create and modify labels attached only to custom entries. Synced entries have unmodifiable labels that come from the source system.
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [Full Resource Name] (https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: `//bigquery.googleapis.com/projects/{PROJECT_ID}/datasets/{DATASET_ID}/tables/{TABLE_ID}` Output only when the entry is one of the types in the `EntryType` enum. For entries with a `user_specified_type`, this field is optional and defaults to an empty string. The resource string must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), periods (.), colons (:), slashes (/), dashes (-), and hashes (#). The maximum size is 200 bytes when encoded in UTF-8.
  final pulumi.Input<String>? linkedResource;
  final pulumi.Input<String>? location;
  /// Specification that applies to Looker sysstem. Only settable when `user_specified_system` is equal to `LOOKER`
  final pulumi.Input<GoogleCloudDatacatalogV1LookerSystemSpec>? lookerSystemSpec;
  /// Model specification.
  final pulumi.Input<GoogleCloudDatacatalogV1ModelSpec>? modelSpec;
  final pulumi.Input<String>? project;
  /// Specification that applies to a user-defined function or procedure. Valid only for entries with the `ROUTINE` type.
  final pulumi.Input<GoogleCloudDatacatalogV1RoutineSpec>? routineSpec;
  /// Schema of the entry. An entry might not have any schema attached to it.
  final pulumi.Input<GoogleCloudDatacatalogV1Schema>? schema;
  /// Specification that applies to a Service resource.
  final pulumi.Input<GoogleCloudDatacatalogV1ServiceSpec>? serviceSpec;
  /// Timestamps from the underlying resource, not from the Data Catalog entry. Output only when the entry has a system listed in the `IntegratedSystem` enum. For entries with `user_specified_system`, this field is optional and defaults to an empty timestamp.
  final pulumi.Input<GoogleCloudDatacatalogV1SystemTimestamps>? sourceSystemTimestamps;
  /// Specification that applies to a relational database system. Only settable when `user_specified_system` is equal to `SQL_DATABASE`
  final pulumi.Input<GoogleCloudDatacatalogV1SqlDatabaseSystemSpec>? sqlDatabaseSystemSpec;
  /// The type of the entry. For details, see [`EntryType`](#entrytype).
  final pulumi.Input<EntryType>? type;
  /// Resource usage statistics.
  final pulumi.Input<GoogleCloudDatacatalogV1UsageSignal>? usageSignal;
  /// Indicates the entry's source system that Data Catalog doesn't automatically integrate with. The `user_specified_system` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  final pulumi.Input<String>? userSpecifiedSystem;
  /// Custom entry type that doesn't match any of the values allowed for input and listed in the `EntryType` enum. When creating an entry, first check the type values in the enum. If there are no appropriate types for the new entry, provide a custom value, for example, `my_special_type`. The `user_specified_type` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  final pulumi.Input<String>? userSpecifiedType;

  /// Creates a new [EntryArgs].
  /// [businessContext] Business Context of the entry. Not supported for BigQuery datasets
  /// [cloudBigtableSystemSpec] Specification that applies to Cloud Bigtable system. Only settable when `integrated_system` is equal to `CLOUD_BIGTABLE`
  /// [dataSourceConnectionSpec] Specification that applies to a data source connection. Valid only for entries with the `DATA_SOURCE_CONNECTION` type.
  /// [databaseTableSpec] Specification that applies to a table resource. Valid only for entries with the `TABLE` or `EXPLORE` type.
  /// [datasetSpec] Specification that applies to a dataset.
  /// [description] Entry description that can consist of several sentences or paragraphs that describe entry contents. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). The maximum size is 2000 bytes when encoded in UTF-8. Default value is an empty string.
  /// [displayName] Display name of an entry. The maximum size is 500 bytes when encoded in UTF-8. Default value is an empty string.
  /// [entryGroupId] Required.
  /// [entryId] Required. The ID of the entry to create. The ID must contain only letters (a-z, A-Z), numbers (0-9), and underscores (_). The maximum size is 64 bytes when encoded in UTF-8.
  /// [filesetSpec] Specification that applies to a fileset resource. Valid only for entries with the `FILESET` type.
  /// [fullyQualifiedName] [Fully Qualified Name (FQN)](https://cloud.google.com//data-catalog/docs/fully-qualified-names) of the resource. Set automatically for entries representing resources from synced systems. Settable only during creation, and read-only later. Can be used for search and lookup of the entries.
  /// [gcsFilesetSpec] Specification that applies to a Cloud Storage fileset. Valid only for entries with the `FILESET` type.
  /// [labels] Cloud labels attached to the entry. In Data Catalog, you can create and modify labels attached only to custom entries. Synced entries have unmodifiable labels that come from the source system.
  /// [linkedResource] The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [Full Resource Name] (https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: `//bigquery.googleapis.com/projects/{PROJECT_ID}/datasets/{DATASET_ID}/tables/{TABLE_ID}` Output only when the entry is one of the types in the `EntryType` enum. For entries with a `user_specified_type`, this field is optional and defaults to an empty string. The resource string must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), periods (.), colons (:), slashes (/), dashes (-), and hashes (#). The maximum size is 200 bytes when encoded in UTF-8.
  /// [location] Optional.
  /// [lookerSystemSpec] Specification that applies to Looker sysstem. Only settable when `user_specified_system` is equal to `LOOKER`
  /// [modelSpec] Model specification.
  /// [project] Optional.
  /// [routineSpec] Specification that applies to a user-defined function or procedure. Valid only for entries with the `ROUTINE` type.
  /// [schema] Schema of the entry. An entry might not have any schema attached to it.
  /// [serviceSpec] Specification that applies to a Service resource.
  /// [sourceSystemTimestamps] Timestamps from the underlying resource, not from the Data Catalog entry. Output only when the entry has a system listed in the `IntegratedSystem` enum. For entries with `user_specified_system`, this field is optional and defaults to an empty timestamp.
  /// [sqlDatabaseSystemSpec] Specification that applies to a relational database system. Only settable when `user_specified_system` is equal to `SQL_DATABASE`
  /// [type] The type of the entry. For details, see [`EntryType`](#entrytype).
  /// [usageSignal] Resource usage statistics.
  /// [userSpecifiedSystem] Indicates the entry's source system that Data Catalog doesn't automatically integrate with. The `user_specified_system` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  /// [userSpecifiedType] Custom entry type that doesn't match any of the values allowed for input and listed in the `EntryType` enum. When creating an entry, first check the type values in the enum. If there are no appropriate types for the new entry, provide a custom value, for example, `my_special_type`. The `user_specified_type` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  EntryArgs({
    pulumi.Output<GoogleCloudDatacatalogV1BusinessContext>? businessContext,
    pulumi.Output<GoogleCloudDatacatalogV1CloudBigtableSystemSpec>? cloudBigtableSystemSpec,
    pulumi.Output<Map<String, dynamic>>? dataSourceConnectionSpec,
    pulumi.Output<GoogleCloudDatacatalogV1DatabaseTableSpec>? databaseTableSpec,
    pulumi.Output<GoogleCloudDatacatalogV1DatasetSpec>? datasetSpec,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> entryGroupId,
    required pulumi.Output<String> entryId,
    pulumi.Output<GoogleCloudDatacatalogV1FilesetSpec>? filesetSpec,
    pulumi.Output<String>? fullyQualifiedName,
    pulumi.Output<GoogleCloudDatacatalogV1GcsFilesetSpec>? gcsFilesetSpec,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? linkedResource,
    pulumi.Output<String>? location,
    pulumi.Output<GoogleCloudDatacatalogV1LookerSystemSpec>? lookerSystemSpec,
    pulumi.Output<GoogleCloudDatacatalogV1ModelSpec>? modelSpec,
    pulumi.Output<String>? project,
    pulumi.Output<GoogleCloudDatacatalogV1RoutineSpec>? routineSpec,
    pulumi.Output<GoogleCloudDatacatalogV1Schema>? schema,
    pulumi.Output<GoogleCloudDatacatalogV1ServiceSpec>? serviceSpec,
    pulumi.Output<GoogleCloudDatacatalogV1SystemTimestamps>? sourceSystemTimestamps,
    pulumi.Output<GoogleCloudDatacatalogV1SqlDatabaseSystemSpec>? sqlDatabaseSystemSpec,
    pulumi.Output<EntryType>? type,
    pulumi.Output<GoogleCloudDatacatalogV1UsageSignal>? usageSignal,
    pulumi.Output<String>? userSpecifiedSystem,
    pulumi.Output<String>? userSpecifiedType,
  }) :
      businessContext = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1BusinessContext>(businessContext),
      cloudBigtableSystemSpec = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1CloudBigtableSystemSpec>(cloudBigtableSystemSpec),
      dataSourceConnectionSpec = pulumi.Input.asOptionalInput<Map<String, dynamic>>(dataSourceConnectionSpec),
      databaseTableSpec = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1DatabaseTableSpec>(databaseTableSpec),
      datasetSpec = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1DatasetSpec>(datasetSpec),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      entryGroupId = pulumi.Input.asInput<String>(entryGroupId),
      entryId = pulumi.Input.asInput<String>(entryId),
      filesetSpec = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1FilesetSpec>(filesetSpec),
      fullyQualifiedName = pulumi.Input.asOptionalInput<String>(fullyQualifiedName),
      gcsFilesetSpec = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1GcsFilesetSpec>(gcsFilesetSpec),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      linkedResource = pulumi.Input.asOptionalInput<String>(linkedResource),
      location = pulumi.Input.asOptionalInput<String>(location),
      lookerSystemSpec = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1LookerSystemSpec>(lookerSystemSpec),
      modelSpec = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1ModelSpec>(modelSpec),
      project = pulumi.Input.asOptionalInput<String>(project),
      routineSpec = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1RoutineSpec>(routineSpec),
      schema = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1Schema>(schema),
      serviceSpec = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1ServiceSpec>(serviceSpec),
      sourceSystemTimestamps = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1SystemTimestamps>(sourceSystemTimestamps),
      sqlDatabaseSystemSpec = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1SqlDatabaseSystemSpec>(sqlDatabaseSystemSpec),
      type = pulumi.Input.asOptionalInput<EntryType>(type),
      usageSignal = pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1UsageSignal>(usageSignal),
      userSpecifiedSystem = pulumi.Input.asOptionalInput<String>(userSpecifiedSystem),
      userSpecifiedType = pulumi.Input.asOptionalInput<String>(userSpecifiedType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessContext': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1BusinessContext, Map<String, dynamic>>(businessContext, (value) => value.toMap()),
      'cloudBigtableSystemSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1CloudBigtableSystemSpec, Map<String, dynamic>>(cloudBigtableSystemSpec, (value) => value.toMap()),
      'dataSourceConnectionSpec': ?dataSourceConnectionSpec,
      'databaseTableSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1DatabaseTableSpec, Map<String, dynamic>>(databaseTableSpec, (value) => value.toMap()),
      'datasetSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1DatasetSpec, Map<String, dynamic>>(datasetSpec, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'entryGroupId': entryGroupId,
      'entryId': entryId,
      'filesetSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1FilesetSpec, Map<String, dynamic>>(filesetSpec, (value) => value.toMap()),
      'fullyQualifiedName': ?fullyQualifiedName,
      'gcsFilesetSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1GcsFilesetSpec, Map<String, dynamic>>(gcsFilesetSpec, (value) => value.toMap()),
      'labels': ?labels,
      'linkedResource': ?linkedResource,
      'location': ?location,
      'lookerSystemSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1LookerSystemSpec, Map<String, dynamic>>(lookerSystemSpec, (value) => value.toMap()),
      'modelSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1ModelSpec, Map<String, dynamic>>(modelSpec, (value) => value.toMap()),
      'project': ?project,
      'routineSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1RoutineSpec, Map<String, dynamic>>(routineSpec, (value) => value.toMap()),
      'schema': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1Schema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'serviceSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1ServiceSpec, Map<String, dynamic>>(serviceSpec, (value) => value.toMap()),
      'sourceSystemTimestamps': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1SystemTimestamps, Map<String, dynamic>>(sourceSystemTimestamps, (value) => value.toMap()),
      'sqlDatabaseSystemSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1SqlDatabaseSystemSpec, Map<String, dynamic>>(sqlDatabaseSystemSpec, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<EntryType, String>(type, (value) => value.value),
      'usageSignal': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1UsageSignal, Map<String, dynamic>>(usageSignal, (value) => value.toMap()),
      'userSpecifiedSystem': ?userSpecifiedSystem,
      'userSpecifiedType': ?userSpecifiedType,
    };
  }

  factory EntryArgs.fromMap(Map<String, dynamic> map) {
    return EntryArgs(
      businessContext: map['businessContext'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1BusinessContext>(GoogleCloudDatacatalogV1BusinessContext.fromMap((map['businessContext'] as Map).cast<String, dynamic>())),
      cloudBigtableSystemSpec: map['cloudBigtableSystemSpec'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1CloudBigtableSystemSpec>(GoogleCloudDatacatalogV1CloudBigtableSystemSpec.fromMap((map['cloudBigtableSystemSpec'] as Map).cast<String, dynamic>())),
      dataSourceConnectionSpec: map['dataSourceConnectionSpec'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['dataSourceConnectionSpec'] as Map).cast<String, dynamic>()),
      databaseTableSpec: map['databaseTableSpec'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1DatabaseTableSpec>(GoogleCloudDatacatalogV1DatabaseTableSpec.fromMap((map['databaseTableSpec'] as Map).cast<String, dynamic>())),
      datasetSpec: map['datasetSpec'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1DatasetSpec>(GoogleCloudDatacatalogV1DatasetSpec.fromMap((map['datasetSpec'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      entryGroupId: pulumi.Output.create<String>(map['entryGroupId'] as String),
      entryId: pulumi.Output.create<String>(map['entryId'] as String),
      filesetSpec: map['filesetSpec'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1FilesetSpec>(GoogleCloudDatacatalogV1FilesetSpec.fromMap((map['filesetSpec'] as Map).cast<String, dynamic>())),
      fullyQualifiedName: map['fullyQualifiedName'] == null ? null : pulumi.Output.create<String>(map['fullyQualifiedName'] as String),
      gcsFilesetSpec: map['gcsFilesetSpec'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1GcsFilesetSpec>(GoogleCloudDatacatalogV1GcsFilesetSpec.fromMap((map['gcsFilesetSpec'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      linkedResource: map['linkedResource'] == null ? null : pulumi.Output.create<String>(map['linkedResource'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      lookerSystemSpec: map['lookerSystemSpec'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1LookerSystemSpec>(GoogleCloudDatacatalogV1LookerSystemSpec.fromMap((map['lookerSystemSpec'] as Map).cast<String, dynamic>())),
      modelSpec: map['modelSpec'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1ModelSpec>(GoogleCloudDatacatalogV1ModelSpec.fromMap((map['modelSpec'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      routineSpec: map['routineSpec'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1RoutineSpec>(GoogleCloudDatacatalogV1RoutineSpec.fromMap((map['routineSpec'] as Map).cast<String, dynamic>())),
      schema: map['schema'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1Schema>(GoogleCloudDatacatalogV1Schema.fromMap((map['schema'] as Map).cast<String, dynamic>())),
      serviceSpec: map['serviceSpec'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1ServiceSpec>(GoogleCloudDatacatalogV1ServiceSpec.fromMap((map['serviceSpec'] as Map).cast<String, dynamic>())),
      sourceSystemTimestamps: map['sourceSystemTimestamps'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1SystemTimestamps>(GoogleCloudDatacatalogV1SystemTimestamps.fromMap((map['sourceSystemTimestamps'] as Map).cast<String, dynamic>())),
      sqlDatabaseSystemSpec: map['sqlDatabaseSystemSpec'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1SqlDatabaseSystemSpec>(GoogleCloudDatacatalogV1SqlDatabaseSystemSpec.fromMap((map['sqlDatabaseSystemSpec'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<EntryType>(EntryType.fromValue(map['type'] as String)),
      usageSignal: map['usageSignal'] == null ? null : pulumi.Output.create<GoogleCloudDatacatalogV1UsageSignal>(GoogleCloudDatacatalogV1UsageSignal.fromMap((map['usageSignal'] as Map).cast<String, dynamic>())),
      userSpecifiedSystem: map['userSpecifiedSystem'] == null ? null : pulumi.Output.create<String>(map['userSpecifiedSystem'] as String),
      userSpecifiedType: map['userSpecifiedType'] == null ? null : pulumi.Output.create<String>(map['userSpecifiedType'] as String),
    );
  }
}

