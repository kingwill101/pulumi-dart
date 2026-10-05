// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1beta1_big_query_date_sharded_spec_response.dart';
import 'google_cloud_datacatalog_v1beta1_big_query_table_spec_response.dart';
import 'google_cloud_datacatalog_v1beta1_gcs_fileset_spec_response.dart';
import 'google_cloud_datacatalog_v1beta1_schema_response.dart';
import 'google_cloud_datacatalog_v1beta1_system_timestamps_response.dart';
import 'google_cloud_datacatalog_v1beta1_usage_signal_response.dart';

/// Result data returned by getEntry.
class GetEntryDatacatalogV1beta1Result {
  /// Specification for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`. Context: https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding.
  final GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpecResponse? bigqueryDateShardedSpec;
  /// Specification that applies to a BigQuery table. This is only valid on entries of type `TABLE`.
  final GoogleCloudDatacatalogV1beta1BigQueryTableSpecResponse? bigqueryTableSpec;
  /// Entry description, which can consist of several sentences or paragraphs that describe entry contents. Default value is an empty string.
  final String? description;
  /// Display information such as title and description. A short name to identify the entry, for example, "Analytics Data - Jan 2011". Default value is an empty string.
  final String? displayName;
  /// Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET.
  final GoogleCloudDatacatalogV1beta1GcsFilesetSpecResponse? gcsFilesetSpec;
  /// This field indicates the entry's source system that Data Catalog integrates with, such as BigQuery or Pub/Sub.
  final String? integratedSystem;
  /// The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [full name of the resource](https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: * //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId Output only when Entry is of type in the EntryType enum. For entries with user_specified_type, this field is optional and defaults to an empty string.
  final String? linkedResource;
  /// The Data Catalog resource name of the entry in URL format. Example: * projects/{project_id}/locations/{location}/entryGroups/{entry_group_id}/entries/{entry_id} Note that this Entry and its child resources may not actually be stored in the location in this name.
  final String? name;
  /// Schema of the entry. An entry might not have any schema attached to it.
  final GoogleCloudDatacatalogV1beta1SchemaResponse? schema;
  /// Timestamps about the underlying resource, not about this Data Catalog entry. Output only when Entry is of type in the EntryType enum. For entries with user_specified_type, this field is optional and defaults to an empty timestamp.
  final GoogleCloudDatacatalogV1beta1SystemTimestampsResponse? sourceSystemTimestamps;
  /// The type of the entry. Only used for Entries with types in the EntryType enum.
  final String? type;
  /// Statistics on the usage level of the resource.
  final GoogleCloudDatacatalogV1beta1UsageSignalResponse? usageSignal;
  /// This field indicates the entry's source system that Data Catalog does not integrate with. `user_specified_system` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  final String? userSpecifiedSystem;
  /// Entry type if it does not fit any of the input-allowed values listed in `EntryType` enum above. When creating an entry, users should check the enum values first, if nothing matches the entry to be created, then provide a custom value, for example "my_special_type". `user_specified_type` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use `user_specified_type`.
  final String? userSpecifiedType;

  /// Creates a new [GetEntryDatacatalogV1beta1Result].
  /// [bigqueryDateShardedSpec] Specification for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`. Context: https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding.
  /// [bigqueryTableSpec] Specification that applies to a BigQuery table. This is only valid on entries of type `TABLE`.
  /// [description] Entry description, which can consist of several sentences or paragraphs that describe entry contents. Default value is an empty string.
  /// [displayName] Display information such as title and description. A short name to identify the entry, for example, "Analytics Data - Jan 2011". Default value is an empty string.
  /// [gcsFilesetSpec] Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET.
  /// [integratedSystem] This field indicates the entry's source system that Data Catalog integrates with, such as BigQuery or Pub/Sub.
  /// [linkedResource] The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [full name of the resource](https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: * //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId Output only when Entry is of type in the EntryType enum. For entries with user_specified_type, this field is optional and defaults to an empty string.
  /// [name] The Data Catalog resource name of the entry in URL format. Example: * projects/{project_id}/locations/{location}/entryGroups/{entry_group_id}/entries/{entry_id} Note that this Entry and its child resources may not actually be stored in the location in this name.
  /// [schema] Schema of the entry. An entry might not have any schema attached to it.
  /// [sourceSystemTimestamps] Timestamps about the underlying resource, not about this Data Catalog entry. Output only when Entry is of type in the EntryType enum. For entries with user_specified_type, this field is optional and defaults to an empty timestamp.
  /// [type] The type of the entry. Only used for Entries with types in the EntryType enum.
  /// [usageSignal] Statistics on the usage level of the resource.
  /// [userSpecifiedSystem] This field indicates the entry's source system that Data Catalog does not integrate with. `user_specified_system` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  /// [userSpecifiedType] Entry type if it does not fit any of the input-allowed values listed in `EntryType` enum above. When creating an entry, users should check the enum values first, if nothing matches the entry to be created, then provide a custom value, for example "my_special_type". `user_specified_type` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use `user_specified_type`.
  const GetEntryDatacatalogV1beta1Result({
    this.bigqueryDateShardedSpec,
    this.bigqueryTableSpec,
    this.description,
    this.displayName,
    this.gcsFilesetSpec,
    this.integratedSystem,
    this.linkedResource,
    this.name,
    this.schema,
    this.sourceSystemTimestamps,
    this.type,
    this.usageSignal,
    this.userSpecifiedSystem,
    this.userSpecifiedType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDateShardedSpec': ?bigqueryDateShardedSpec?.toMap(),
      'bigqueryTableSpec': ?bigqueryTableSpec?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'gcsFilesetSpec': ?gcsFilesetSpec?.toMap(),
      'integratedSystem': ?integratedSystem,
      'linkedResource': ?linkedResource,
      'name': ?name,
      'schema': ?schema?.toMap(),
      'sourceSystemTimestamps': ?sourceSystemTimestamps?.toMap(),
      'type': ?type,
      'usageSignal': ?usageSignal?.toMap(),
      'userSpecifiedSystem': ?userSpecifiedSystem,
      'userSpecifiedType': ?userSpecifiedType,
    };
  }

  factory GetEntryDatacatalogV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetEntryDatacatalogV1beta1Result(
      bigqueryDateShardedSpec: (() { final guardedValue = map['bigqueryDateShardedSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      bigqueryTableSpec: (() { final guardedValue = map['bigqueryTableSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1beta1BigQueryTableSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gcsFilesetSpec: (() { final guardedValue = map['gcsFilesetSpec']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1beta1GcsFilesetSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      integratedSystem: (() { final guardedValue = map['integratedSystem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedResource: (() { final guardedValue = map['linkedResource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1beta1SchemaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sourceSystemTimestamps: (() { final guardedValue = map['sourceSystemTimestamps']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1beta1SystemTimestampsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      usageSignal: (() { final guardedValue = map['usageSignal']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1beta1UsageSignalResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      userSpecifiedSystem: (() { final guardedValue = map['userSpecifiedSystem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userSpecifiedType: (() { final guardedValue = map['userSpecifiedType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
