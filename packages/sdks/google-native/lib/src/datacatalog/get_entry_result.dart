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
  final GoogleCloudDatacatalogV1BigQueryDateShardedSpecResponse? bigqueryDateShardedSpec;
  /// Specification that applies to a BigQuery table. Valid only for entries with the `TABLE` type.
  final GoogleCloudDatacatalogV1BigQueryTableSpecResponse? bigqueryTableSpec;
  /// Business Context of the entry. Not supported for BigQuery datasets
  final GoogleCloudDatacatalogV1BusinessContextResponse? businessContext;
  /// Specification that applies to Cloud Bigtable system. Only settable when `integrated_system` is equal to `CLOUD_BIGTABLE`
  final GoogleCloudDatacatalogV1CloudBigtableSystemSpecResponse? cloudBigtableSystemSpec;
  /// Physical location of the entry.
  final GoogleCloudDatacatalogV1DataSourceResponse? dataSource;
  /// Specification that applies to a data source connection. Valid only for entries with the `DATA_SOURCE_CONNECTION` type.
  final GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse? dataSourceConnectionSpec;
  /// Specification that applies to a table resource. Valid only for entries with the `TABLE` or `EXPLORE` type.
  final GoogleCloudDatacatalogV1DatabaseTableSpecResponse? databaseTableSpec;
  /// Specification that applies to a dataset.
  final GoogleCloudDatacatalogV1DatasetSpecResponse? datasetSpec;
  /// Entry description that can consist of several sentences or paragraphs that describe entry contents. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). The maximum size is 2000 bytes when encoded in UTF-8. Default value is an empty string.
  final String? description;
  /// Display name of an entry. The maximum size is 500 bytes when encoded in UTF-8. Default value is an empty string.
  final String? displayName;
  /// Specification that applies to a fileset resource. Valid only for entries with the `FILESET` type.
  final GoogleCloudDatacatalogV1FilesetSpecResponse? filesetSpec;
  /// [Fully Qualified Name (FQN)](https://cloud.google.com//data-catalog/docs/fully-qualified-names) of the resource. Set automatically for entries representing resources from synced systems. Settable only during creation, and read-only later. Can be used for search and lookup of the entries.
  final String? fullyQualifiedName;
  /// Specification that applies to a Cloud Storage fileset. Valid only for entries with the `FILESET` type.
  final GoogleCloudDatacatalogV1GcsFilesetSpecResponse? gcsFilesetSpec;
  /// Indicates the entry's source system that Data Catalog integrates with, such as BigQuery, Pub/Sub, or Dataproc Metastore.
  final String? integratedSystem;
  /// Cloud labels attached to the entry. In Data Catalog, you can create and modify labels attached only to custom entries. Synced entries have unmodifiable labels that come from the source system.
  final Map<String, String>? labels;
  /// The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [Full Resource Name] (https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: `//bigquery.googleapis.com/projects/{PROJECT_ID}/datasets/{DATASET_ID}/tables/{TABLE_ID}` Output only when the entry is one of the types in the `EntryType` enum. For entries with a `user_specified_type`, this field is optional and defaults to an empty string. The resource string must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), periods (.), colons (:), slashes (/), dashes (-), and hashes (#). The maximum size is 200 bytes when encoded in UTF-8.
  final String? linkedResource;
  /// Specification that applies to Looker sysstem. Only settable when `user_specified_system` is equal to `LOOKER`
  final GoogleCloudDatacatalogV1LookerSystemSpecResponse? lookerSystemSpec;
  /// Model specification.
  final GoogleCloudDatacatalogV1ModelSpecResponse? modelSpec;
  /// The resource name of an entry in URL format. Note: The entry itself and its child resources might not be stored in the location specified in its name.
  final String? name;
  /// Additional information related to the entry. Private to the current user.
  final GoogleCloudDatacatalogV1PersonalDetailsResponse? personalDetails;
  /// Specification that applies to a user-defined function or procedure. Valid only for entries with the `ROUTINE` type.
  final GoogleCloudDatacatalogV1RoutineSpecResponse? routineSpec;
  /// Schema of the entry. An entry might not have any schema attached to it.
  final GoogleCloudDatacatalogV1SchemaResponse? schema;
  /// Specification that applies to a Service resource.
  final GoogleCloudDatacatalogV1ServiceSpecResponse? serviceSpec;
  /// Timestamps from the underlying resource, not from the Data Catalog entry. Output only when the entry has a system listed in the `IntegratedSystem` enum. For entries with `user_specified_system`, this field is optional and defaults to an empty timestamp.
  final GoogleCloudDatacatalogV1SystemTimestampsResponse? sourceSystemTimestamps;
  /// Specification that applies to a relational database system. Only settable when `user_specified_system` is equal to `SQL_DATABASE`
  final GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse? sqlDatabaseSystemSpec;
  /// The type of the entry. For details, see [`EntryType`](#entrytype).
  final String? type;
  /// Resource usage statistics.
  final GoogleCloudDatacatalogV1UsageSignalResponse? usageSignal;
  /// Indicates the entry's source system that Data Catalog doesn't automatically integrate with. The `user_specified_system` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  final String? userSpecifiedSystem;
  /// Custom entry type that doesn't match any of the values allowed for input and listed in the `EntryType` enum. When creating an entry, first check the type values in the enum. If there are no appropriate types for the new entry, provide a custom value, for example, `my_special_type`. The `user_specified_type` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  final String? userSpecifiedType;

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
    this.bigqueryDateShardedSpec,
    this.bigqueryTableSpec,
    this.businessContext,
    this.cloudBigtableSystemSpec,
    this.dataSource,
    this.dataSourceConnectionSpec,
    this.databaseTableSpec,
    this.datasetSpec,
    this.description,
    this.displayName,
    this.filesetSpec,
    this.fullyQualifiedName,
    this.gcsFilesetSpec,
    this.integratedSystem,
    this.labels,
    this.linkedResource,
    this.lookerSystemSpec,
    this.modelSpec,
    this.name,
    this.personalDetails,
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
      'bigqueryDateShardedSpec': ?bigqueryDateShardedSpec?.toMap(),
      'bigqueryTableSpec': ?bigqueryTableSpec?.toMap(),
      'businessContext': ?businessContext?.toMap(),
      'cloudBigtableSystemSpec': ?cloudBigtableSystemSpec?.toMap(),
      'dataSource': ?dataSource?.toMap(),
      'dataSourceConnectionSpec': ?dataSourceConnectionSpec?.toMap(),
      'databaseTableSpec': ?databaseTableSpec?.toMap(),
      'datasetSpec': ?datasetSpec?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'filesetSpec': ?filesetSpec?.toMap(),
      'fullyQualifiedName': ?fullyQualifiedName,
      'gcsFilesetSpec': ?gcsFilesetSpec?.toMap(),
      'integratedSystem': ?integratedSystem,
      'labels': ?labels,
      'linkedResource': ?linkedResource,
      'lookerSystemSpec': ?lookerSystemSpec?.toMap(),
      'modelSpec': ?modelSpec?.toMap(),
      'name': ?name,
      'personalDetails': ?personalDetails?.toMap(),
      'routineSpec': ?routineSpec?.toMap(),
      'schema': ?schema?.toMap(),
      'serviceSpec': ?serviceSpec?.toMap(),
      'sourceSystemTimestamps': ?sourceSystemTimestamps?.toMap(),
      'sqlDatabaseSystemSpec': ?sqlDatabaseSystemSpec?.toMap(),
      'type': ?type,
      'usageSignal': ?usageSignal?.toMap(),
      'userSpecifiedSystem': ?userSpecifiedSystem,
      'userSpecifiedType': ?userSpecifiedType,
    };
  }

  factory GetEntryResult.fromMap(Map<String, dynamic> map) {
    return GetEntryResult(
      bigqueryDateShardedSpec: (() { final guardedValue = map['bigqueryDateShardedSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1BigQueryDateShardedSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      bigqueryTableSpec: (() { final guardedValue = map['bigqueryTableSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1BigQueryTableSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      businessContext: (() { final guardedValue = map['businessContext']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1BusinessContextResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cloudBigtableSystemSpec: (() { final guardedValue = map['cloudBigtableSystemSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1CloudBigtableSystemSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1DataSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataSourceConnectionSpec: (() { final guardedValue = map['dataSourceConnectionSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      databaseTableSpec: (() { final guardedValue = map['databaseTableSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1DatabaseTableSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      datasetSpec: (() { final guardedValue = map['datasetSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1DatasetSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filesetSpec: (() { final guardedValue = map['filesetSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1FilesetSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      fullyQualifiedName: (() { final guardedValue = map['fullyQualifiedName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gcsFilesetSpec: (() { final guardedValue = map['gcsFilesetSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1GcsFilesetSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      integratedSystem: (() { final guardedValue = map['integratedSystem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      linkedResource: (() { final guardedValue = map['linkedResource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lookerSystemSpec: (() { final guardedValue = map['lookerSystemSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1LookerSystemSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      modelSpec: (() { final guardedValue = map['modelSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1ModelSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      personalDetails: (() { final guardedValue = map['personalDetails']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1PersonalDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      routineSpec: (() { final guardedValue = map['routineSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1RoutineSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1SchemaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serviceSpec: (() { final guardedValue = map['serviceSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1ServiceSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sourceSystemTimestamps: (() { final guardedValue = map['sourceSystemTimestamps']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1SystemTimestampsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sqlDatabaseSystemSpec: (() { final guardedValue = map['sqlDatabaseSystemSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      usageSignal: (() { final guardedValue = map['usageSignal']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1UsageSignalResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      userSpecifiedSystem: (() { final guardedValue = map['userSpecifiedSystem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userSpecifiedType: (() { final guardedValue = map['userSpecifiedType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
