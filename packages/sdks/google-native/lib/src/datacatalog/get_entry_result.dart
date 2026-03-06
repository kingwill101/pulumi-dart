// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_big_query_date_sharded_spec_response.dart';
import 'google_cloud_datacatalog_v1_big_query_table_spec_response.dart';
import 'google_cloud_datacatalog_v1_business_context_response.dart';
import 'google_cloud_datacatalog_v1_cloud_bigtable_system_spec_response.dart';
import 'google_cloud_datacatalog_v1_data_source_connection_spec_response.dart';
import 'google_cloud_datacatalog_v1_data_source_response.dart';
import 'google_cloud_datacatalog_v1_database_table_spec_response.dart';
import 'google_cloud_datacatalog_v1_dataset_spec_response.dart';
import 'google_cloud_datacatalog_v1_fileset_spec_response.dart';
import 'google_cloud_datacatalog_v1_gcs_fileset_spec_response.dart';
import 'google_cloud_datacatalog_v1_looker_system_spec_response.dart';
import 'google_cloud_datacatalog_v1_model_spec_response.dart';
import 'google_cloud_datacatalog_v1_personal_details_response.dart';
import 'google_cloud_datacatalog_v1_routine_spec_response.dart';
import 'google_cloud_datacatalog_v1_schema_response.dart';
import 'google_cloud_datacatalog_v1_service_spec_response.dart';
import 'google_cloud_datacatalog_v1_sql_database_system_spec_response.dart';
import 'google_cloud_datacatalog_v1_system_timestamps_response.dart';
import 'google_cloud_datacatalog_v1_usage_signal_response.dart';

/// Result data returned by getEntry.
class GetEntryResult {
  /// Specification for a group of BigQuery tables with the `[prefix]YYYYMMDD` name pattern. For more information, see [Introduction to partitioned tables] (https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding).
  final GoogleCloudDatacatalogV1BigQueryDateShardedSpecResponse bigqueryDateShardedSpec;
  /// Specification that applies to a BigQuery table. Valid only for entries with the `TABLE` type.
  final GoogleCloudDatacatalogV1BigQueryTableSpecResponse bigqueryTableSpec;
  /// Business Context of the entry. Not supported for BigQuery datasets
  final GoogleCloudDatacatalogV1BusinessContextResponse businessContext;
  /// Specification that applies to Cloud Bigtable system. Only settable when `integrated_system` is equal to `CLOUD_BIGTABLE`
  final GoogleCloudDatacatalogV1CloudBigtableSystemSpecResponse cloudBigtableSystemSpec;
  /// Physical location of the entry.
  final GoogleCloudDatacatalogV1DataSourceResponse dataSource;
  /// Specification that applies to a data source connection. Valid only for entries with the `DATA_SOURCE_CONNECTION` type.
  final GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse dataSourceConnectionSpec;
  /// Specification that applies to a table resource. Valid only for entries with the `TABLE` or `EXPLORE` type.
  final GoogleCloudDatacatalogV1DatabaseTableSpecResponse databaseTableSpec;
  /// Specification that applies to a dataset.
  final GoogleCloudDatacatalogV1DatasetSpecResponse datasetSpec;
  /// Entry description that can consist of several sentences or paragraphs that describe entry contents. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). The maximum size is 2000 bytes when encoded in UTF-8. Default value is an empty string.
  final String description;
  /// Display name of an entry. The maximum size is 500 bytes when encoded in UTF-8. Default value is an empty string.
  final String displayName;
  /// Specification that applies to a fileset resource. Valid only for entries with the `FILESET` type.
  final GoogleCloudDatacatalogV1FilesetSpecResponse filesetSpec;
  /// [Fully Qualified Name (FQN)](https://cloud.google.com//data-catalog/docs/fully-qualified-names) of the resource. Set automatically for entries representing resources from synced systems. Settable only during creation, and read-only later. Can be used for search and lookup of the entries.
  final String fullyQualifiedName;
  /// Specification that applies to a Cloud Storage fileset. Valid only for entries with the `FILESET` type.
  final GoogleCloudDatacatalogV1GcsFilesetSpecResponse gcsFilesetSpec;
  /// Indicates the entry's source system that Data Catalog integrates with, such as BigQuery, Pub/Sub, or Dataproc Metastore.
  final String integratedSystem;
  /// Cloud labels attached to the entry. In Data Catalog, you can create and modify labels attached only to custom entries. Synced entries have unmodifiable labels that come from the source system.
  final Map<String, String> labels;
  /// The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [Full Resource Name] (https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: `//bigquery.googleapis.com/projects/{PROJECT_ID}/datasets/{DATASET_ID}/tables/{TABLE_ID}` Output only when the entry is one of the types in the `EntryType` enum. For entries with a `user_specified_type`, this field is optional and defaults to an empty string. The resource string must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), periods (.), colons (:), slashes (/), dashes (-), and hashes (#). The maximum size is 200 bytes when encoded in UTF-8.
  final String linkedResource;
  /// Specification that applies to Looker sysstem. Only settable when `user_specified_system` is equal to `LOOKER`
  final GoogleCloudDatacatalogV1LookerSystemSpecResponse lookerSystemSpec;
  /// Model specification.
  final GoogleCloudDatacatalogV1ModelSpecResponse modelSpec;
  /// The resource name of an entry in URL format. Note: The entry itself and its child resources might not be stored in the location specified in its name.
  final String name;
  /// Additional information related to the entry. Private to the current user.
  final GoogleCloudDatacatalogV1PersonalDetailsResponse personalDetails;
  /// Specification that applies to a user-defined function or procedure. Valid only for entries with the `ROUTINE` type.
  final GoogleCloudDatacatalogV1RoutineSpecResponse routineSpec;
  /// Schema of the entry. An entry might not have any schema attached to it.
  final GoogleCloudDatacatalogV1SchemaResponse schema;
  /// Specification that applies to a Service resource.
  final GoogleCloudDatacatalogV1ServiceSpecResponse serviceSpec;
  /// Timestamps from the underlying resource, not from the Data Catalog entry. Output only when the entry has a system listed in the `IntegratedSystem` enum. For entries with `user_specified_system`, this field is optional and defaults to an empty timestamp.
  final GoogleCloudDatacatalogV1SystemTimestampsResponse sourceSystemTimestamps;
  /// Specification that applies to a relational database system. Only settable when `user_specified_system` is equal to `SQL_DATABASE`
  final GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse sqlDatabaseSystemSpec;
  /// The type of the entry. For details, see [`EntryType`](#entrytype).
  final String type;
  /// Resource usage statistics.
  final GoogleCloudDatacatalogV1UsageSignalResponse usageSignal;
  /// Indicates the entry's source system that Data Catalog doesn't automatically integrate with. The `user_specified_system` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  final String userSpecifiedSystem;
  /// Custom entry type that doesn't match any of the values allowed for input and listed in the `EntryType` enum. When creating an entry, first check the type values in the enum. If there are no appropriate types for the new entry, provide a custom value, for example, `my_special_type`. The `user_specified_type` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  final String userSpecifiedType;

  /// Creates a new [GetEntryResult].
  /// [bigqueryDateShardedSpec] Specification for a group of BigQuery tables with the `[prefix]YYYYMMDD` name pattern. For more information, see [Introduction to partitioned tables] (https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding).
  /// [bigqueryTableSpec] Specification that applies to a BigQuery table. Valid only for entries with the `TABLE` type.
  /// [businessContext] Business Context of the entry. Not supported for BigQuery datasets
  /// [cloudBigtableSystemSpec] Specification that applies to Cloud Bigtable system. Only settable when `integrated_system` is equal to `CLOUD_BIGTABLE`
  /// [dataSource] Physical location of the entry.
  /// [dataSourceConnectionSpec] Specification that applies to a data source connection. Valid only for entries with the `DATA_SOURCE_CONNECTION` type.
  /// [databaseTableSpec] Specification that applies to a table resource. Valid only for entries with the `TABLE` or `EXPLORE` type.
  /// [datasetSpec] Specification that applies to a dataset.
  /// [description] Entry description that can consist of several sentences or paragraphs that describe entry contents. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). The maximum size is 2000 bytes when encoded in UTF-8. Default value is an empty string.
  /// [displayName] Display name of an entry. The maximum size is 500 bytes when encoded in UTF-8. Default value is an empty string.
  /// [filesetSpec] Specification that applies to a fileset resource. Valid only for entries with the `FILESET` type.
  /// [fullyQualifiedName] [Fully Qualified Name (FQN)](https://cloud.google.com//data-catalog/docs/fully-qualified-names) of the resource. Set automatically for entries representing resources from synced systems. Settable only during creation, and read-only later. Can be used for search and lookup of the entries.
  /// [gcsFilesetSpec] Specification that applies to a Cloud Storage fileset. Valid only for entries with the `FILESET` type.
  /// [integratedSystem] Indicates the entry's source system that Data Catalog integrates with, such as BigQuery, Pub/Sub, or Dataproc Metastore.
  /// [labels] Cloud labels attached to the entry. In Data Catalog, you can create and modify labels attached only to custom entries. Synced entries have unmodifiable labels that come from the source system.
  /// [linkedResource] The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [Full Resource Name] (https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: `//bigquery.googleapis.com/projects/{PROJECT_ID}/datasets/{DATASET_ID}/tables/{TABLE_ID}` Output only when the entry is one of the types in the `EntryType` enum. For entries with a `user_specified_type`, this field is optional and defaults to an empty string. The resource string must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), periods (.), colons (:), slashes (/), dashes (-), and hashes (#). The maximum size is 200 bytes when encoded in UTF-8.
  /// [lookerSystemSpec] Specification that applies to Looker sysstem. Only settable when `user_specified_system` is equal to `LOOKER`
  /// [modelSpec] Model specification.
  /// [name] The resource name of an entry in URL format. Note: The entry itself and its child resources might not be stored in the location specified in its name.
  /// [personalDetails] Additional information related to the entry. Private to the current user.
  /// [routineSpec] Specification that applies to a user-defined function or procedure. Valid only for entries with the `ROUTINE` type.
  /// [schema] Schema of the entry. An entry might not have any schema attached to it.
  /// [serviceSpec] Specification that applies to a Service resource.
  /// [sourceSystemTimestamps] Timestamps from the underlying resource, not from the Data Catalog entry. Output only when the entry has a system listed in the `IntegratedSystem` enum. For entries with `user_specified_system`, this field is optional and defaults to an empty timestamp.
  /// [sqlDatabaseSystemSpec] Specification that applies to a relational database system. Only settable when `user_specified_system` is equal to `SQL_DATABASE`
  /// [type] The type of the entry. For details, see [`EntryType`](#entrytype).
  /// [usageSignal] Resource usage statistics.
  /// [userSpecifiedSystem] Indicates the entry's source system that Data Catalog doesn't automatically integrate with. The `user_specified_system` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  /// [userSpecifiedType] Custom entry type that doesn't match any of the values allowed for input and listed in the `EntryType` enum. When creating an entry, first check the type values in the enum. If there are no appropriate types for the new entry, provide a custom value, for example, `my_special_type`. The `user_specified_type` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  const GetEntryResult({
    required this.bigqueryDateShardedSpec,
    required this.bigqueryTableSpec,
    required this.businessContext,
    required this.cloudBigtableSystemSpec,
    required this.dataSource,
    required this.dataSourceConnectionSpec,
    required this.databaseTableSpec,
    required this.datasetSpec,
    required this.description,
    required this.displayName,
    required this.filesetSpec,
    required this.fullyQualifiedName,
    required this.gcsFilesetSpec,
    required this.integratedSystem,
    required this.labels,
    required this.linkedResource,
    required this.lookerSystemSpec,
    required this.modelSpec,
    required this.name,
    required this.personalDetails,
    required this.routineSpec,
    required this.schema,
    required this.serviceSpec,
    required this.sourceSystemTimestamps,
    required this.sqlDatabaseSystemSpec,
    required this.type,
    required this.usageSignal,
    required this.userSpecifiedSystem,
    required this.userSpecifiedType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDateShardedSpec': bigqueryDateShardedSpec.toMap(),
      'bigqueryTableSpec': bigqueryTableSpec.toMap(),
      'businessContext': businessContext.toMap(),
      'cloudBigtableSystemSpec': cloudBigtableSystemSpec.toMap(),
      'dataSource': dataSource.toMap(),
      'dataSourceConnectionSpec': dataSourceConnectionSpec.toMap(),
      'databaseTableSpec': databaseTableSpec.toMap(),
      'datasetSpec': datasetSpec.toMap(),
      'description': description,
      'displayName': displayName,
      'filesetSpec': filesetSpec.toMap(),
      'fullyQualifiedName': fullyQualifiedName,
      'gcsFilesetSpec': gcsFilesetSpec.toMap(),
      'integratedSystem': integratedSystem,
      'labels': labels,
      'linkedResource': linkedResource,
      'lookerSystemSpec': lookerSystemSpec.toMap(),
      'modelSpec': modelSpec.toMap(),
      'name': name,
      'personalDetails': personalDetails.toMap(),
      'routineSpec': routineSpec.toMap(),
      'schema': schema.toMap(),
      'serviceSpec': serviceSpec.toMap(),
      'sourceSystemTimestamps': sourceSystemTimestamps.toMap(),
      'sqlDatabaseSystemSpec': sqlDatabaseSystemSpec.toMap(),
      'type': type,
      'usageSignal': usageSignal.toMap(),
      'userSpecifiedSystem': userSpecifiedSystem,
      'userSpecifiedType': userSpecifiedType,
    };
  }

  factory GetEntryResult.fromMap(Map<String, dynamic> map) {
    return GetEntryResult(
      bigqueryDateShardedSpec: GoogleCloudDatacatalogV1BigQueryDateShardedSpecResponse.fromMap((map['bigqueryDateShardedSpec']! as Map).cast<String, dynamic>()),
      bigqueryTableSpec: GoogleCloudDatacatalogV1BigQueryTableSpecResponse.fromMap((map['bigqueryTableSpec']! as Map).cast<String, dynamic>()),
      businessContext: GoogleCloudDatacatalogV1BusinessContextResponse.fromMap((map['businessContext']! as Map).cast<String, dynamic>()),
      cloudBigtableSystemSpec: GoogleCloudDatacatalogV1CloudBigtableSystemSpecResponse.fromMap((map['cloudBigtableSystemSpec']! as Map).cast<String, dynamic>()),
      dataSource: GoogleCloudDatacatalogV1DataSourceResponse.fromMap((map['dataSource']! as Map).cast<String, dynamic>()),
      dataSourceConnectionSpec: GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse.fromMap((map['dataSourceConnectionSpec']! as Map).cast<String, dynamic>()),
      databaseTableSpec: GoogleCloudDatacatalogV1DatabaseTableSpecResponse.fromMap((map['databaseTableSpec']! as Map).cast<String, dynamic>()),
      datasetSpec: GoogleCloudDatacatalogV1DatasetSpecResponse.fromMap((map['datasetSpec']! as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      filesetSpec: GoogleCloudDatacatalogV1FilesetSpecResponse.fromMap((map['filesetSpec']! as Map).cast<String, dynamic>()),
      fullyQualifiedName: map['fullyQualifiedName'] as String,
      gcsFilesetSpec: GoogleCloudDatacatalogV1GcsFilesetSpecResponse.fromMap((map['gcsFilesetSpec']! as Map).cast<String, dynamic>()),
      integratedSystem: map['integratedSystem'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      linkedResource: map['linkedResource'] as String,
      lookerSystemSpec: GoogleCloudDatacatalogV1LookerSystemSpecResponse.fromMap((map['lookerSystemSpec']! as Map).cast<String, dynamic>()),
      modelSpec: GoogleCloudDatacatalogV1ModelSpecResponse.fromMap((map['modelSpec']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      personalDetails: GoogleCloudDatacatalogV1PersonalDetailsResponse.fromMap((map['personalDetails']! as Map).cast<String, dynamic>()),
      routineSpec: GoogleCloudDatacatalogV1RoutineSpecResponse.fromMap((map['routineSpec']! as Map).cast<String, dynamic>()),
      schema: GoogleCloudDatacatalogV1SchemaResponse.fromMap((map['schema']! as Map).cast<String, dynamic>()),
      serviceSpec: GoogleCloudDatacatalogV1ServiceSpecResponse.fromMap((map['serviceSpec']! as Map).cast<String, dynamic>()),
      sourceSystemTimestamps: GoogleCloudDatacatalogV1SystemTimestampsResponse.fromMap((map['sourceSystemTimestamps']! as Map).cast<String, dynamic>()),
      sqlDatabaseSystemSpec: GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse.fromMap((map['sqlDatabaseSystemSpec']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      usageSignal: GoogleCloudDatacatalogV1UsageSignalResponse.fromMap((map['usageSignal']! as Map).cast<String, dynamic>()),
      userSpecifiedSystem: map['userSpecifiedSystem'] as String,
      userSpecifiedType: map['userSpecifiedType'] as String,
    );
  }
}

