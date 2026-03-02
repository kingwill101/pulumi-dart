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
    this.businessContext,
    this.cloudBigtableSystemSpec,
    this.dataSourceConnectionSpec,
    this.databaseTableSpec,
    this.datasetSpec,
    this.description,
    this.displayName,
    required this.entryGroupId,
    required this.entryId,
    this.filesetSpec,
    this.fullyQualifiedName,
    this.gcsFilesetSpec,
    this.labels,
    this.linkedResource,
    this.location,
    this.lookerSystemSpec,
    this.modelSpec,
    this.project,
    this.routineSpec,
    this.schema,
    this.serviceSpec,
    this.sourceSystemTimestamps,
    this.sqlDatabaseSystemSpec,
    this.type,
    this.usageSignal,
    this.userSpecifiedSystem,
    this.userSpecifiedType,
  });

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
      businessContext: map['businessContext'] == null ? null : (GoogleCloudDatacatalogV1BusinessContext.fromMap((map['businessContext']! as Map).cast<String, dynamic>())).input(),
      cloudBigtableSystemSpec: map['cloudBigtableSystemSpec'] == null ? null : (GoogleCloudDatacatalogV1CloudBigtableSystemSpec.fromMap((map['cloudBigtableSystemSpec']! as Map).cast<String, dynamic>())).input(),
      dataSourceConnectionSpec: map['dataSourceConnectionSpec'] == null ? null : ((map['dataSourceConnectionSpec']! as Map).cast<String, dynamic>()).input(),
      databaseTableSpec: map['databaseTableSpec'] == null ? null : (GoogleCloudDatacatalogV1DatabaseTableSpec.fromMap((map['databaseTableSpec']! as Map).cast<String, dynamic>())).input(),
      datasetSpec: map['datasetSpec'] == null ? null : (GoogleCloudDatacatalogV1DatasetSpec.fromMap((map['datasetSpec']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      entryGroupId: (map['entryGroupId'] as String).input(),
      entryId: (map['entryId'] as String).input(),
      filesetSpec: map['filesetSpec'] == null ? null : (GoogleCloudDatacatalogV1FilesetSpec.fromMap((map['filesetSpec']! as Map).cast<String, dynamic>())).input(),
      fullyQualifiedName: map['fullyQualifiedName'] == null ? null : (map['fullyQualifiedName']! as String).input(),
      gcsFilesetSpec: map['gcsFilesetSpec'] == null ? null : (GoogleCloudDatacatalogV1GcsFilesetSpec.fromMap((map['gcsFilesetSpec']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      linkedResource: map['linkedResource'] == null ? null : (map['linkedResource']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      lookerSystemSpec: map['lookerSystemSpec'] == null ? null : (GoogleCloudDatacatalogV1LookerSystemSpec.fromMap((map['lookerSystemSpec']! as Map).cast<String, dynamic>())).input(),
      modelSpec: map['modelSpec'] == null ? null : (GoogleCloudDatacatalogV1ModelSpec.fromMap((map['modelSpec']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      routineSpec: map['routineSpec'] == null ? null : (GoogleCloudDatacatalogV1RoutineSpec.fromMap((map['routineSpec']! as Map).cast<String, dynamic>())).input(),
      schema: map['schema'] == null ? null : (GoogleCloudDatacatalogV1Schema.fromMap((map['schema']! as Map).cast<String, dynamic>())).input(),
      serviceSpec: map['serviceSpec'] == null ? null : (GoogleCloudDatacatalogV1ServiceSpec.fromMap((map['serviceSpec']! as Map).cast<String, dynamic>())).input(),
      sourceSystemTimestamps: map['sourceSystemTimestamps'] == null ? null : (GoogleCloudDatacatalogV1SystemTimestamps.fromMap((map['sourceSystemTimestamps']! as Map).cast<String, dynamic>())).input(),
      sqlDatabaseSystemSpec: map['sqlDatabaseSystemSpec'] == null ? null : (GoogleCloudDatacatalogV1SqlDatabaseSystemSpec.fromMap((map['sqlDatabaseSystemSpec']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (EntryType.fromValue(map['type']! as String)).input(),
      usageSignal: map['usageSignal'] == null ? null : (GoogleCloudDatacatalogV1UsageSignal.fromMap((map['usageSignal']! as Map).cast<String, dynamic>())).input(),
      userSpecifiedSystem: map['userSpecifiedSystem'] == null ? null : (map['userSpecifiedSystem']! as String).input(),
      userSpecifiedType: map['userSpecifiedType'] == null ? null : (map['userSpecifiedType']! as String).input(),
    );
  }
}

