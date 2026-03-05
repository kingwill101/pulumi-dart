// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_type_datacatalog_v1beta1.dart';
import 'google_cloud_datacatalog_v1beta1_big_query_table_spec.dart';
import 'google_cloud_datacatalog_v1beta1_gcs_fileset_spec.dart';
import 'google_cloud_datacatalog_v1beta1_schema.dart';

/// {@template pulumi_datacatalog_v1beta1_entry_datacatalog_v1beta1_args_doc}
/// The set of arguments for Entry.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_entry_datacatalog_v1beta1_args_doc}
class EntryDatacatalogV1beta1Args {
  /// Specification for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`. Context: https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding.
  final pulumi.Input<Map<String, dynamic>>? bigqueryDateShardedSpec;
  /// Specification that applies to a BigQuery table. This is only valid on entries of type `TABLE`.
  final pulumi.Input<GoogleCloudDatacatalogV1beta1BigQueryTableSpec>? bigqueryTableSpec;
  /// Entry description, which can consist of several sentences or paragraphs that describe entry contents. Default value is an empty string.
  final pulumi.Input<String>? description;
  /// Display information such as title and description. A short name to identify the entry, for example, "Analytics Data - Jan 2011". Default value is an empty string.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String> entryGroupId;
  /// Required. The id of the entry to create.
  final pulumi.Input<String> entryId;
  /// Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET.
  final pulumi.Input<GoogleCloudDatacatalogV1beta1GcsFilesetSpec>? gcsFilesetSpec;
  /// The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [full name of the resource](https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: * //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId Output only when Entry is of type in the EntryType enum. For entries with user_specified_type, this field is optional and defaults to an empty string.
  final pulumi.Input<String>? linkedResource;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Schema of the entry. An entry might not have any schema attached to it.
  final pulumi.Input<GoogleCloudDatacatalogV1beta1Schema>? schema;
  /// The type of the entry. Only used for Entries with types in the EntryType enum.
  final pulumi.Input<EntryTypeDatacatalogV1beta1>? type;
  /// This field indicates the entry's source system that Data Catalog does not integrate with. `user_specified_system` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  final pulumi.Input<String>? userSpecifiedSystem;
  /// Entry type if it does not fit any of the input-allowed values listed in `EntryType` enum above. When creating an entry, users should check the enum values first, if nothing matches the entry to be created, then provide a custom value, for example "my_special_type". `user_specified_type` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use `user_specified_type`.
  final pulumi.Input<String>? userSpecifiedType;

  /// Creates a new [EntryDatacatalogV1beta1Args].
  /// [bigqueryDateShardedSpec] Specification for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`. Context: https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding.
  /// [bigqueryTableSpec] Specification that applies to a BigQuery table. This is only valid on entries of type `TABLE`.
  /// [description] Entry description, which can consist of several sentences or paragraphs that describe entry contents. Default value is an empty string.
  /// [displayName] Display information such as title and description. A short name to identify the entry, for example, "Analytics Data - Jan 2011". Default value is an empty string.
  /// [entryGroupId] Required.
  /// [entryId] Required. The id of the entry to create.
  /// [gcsFilesetSpec] Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET.
  /// [linkedResource] The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [full name of the resource](https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: * //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId Output only when Entry is of type in the EntryType enum. For entries with user_specified_type, this field is optional and defaults to an empty string.
  /// [location] Optional.
  /// [project] Optional.
  /// [schema] Schema of the entry. An entry might not have any schema attached to it.
  /// [type] The type of the entry. Only used for Entries with types in the EntryType enum.
  /// [userSpecifiedSystem] This field indicates the entry's source system that Data Catalog does not integrate with. `user_specified_system` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  /// [userSpecifiedType] Entry type if it does not fit any of the input-allowed values listed in `EntryType` enum above. When creating an entry, users should check the enum values first, if nothing matches the entry to be created, then provide a custom value, for example "my_special_type". `user_specified_type` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use `user_specified_type`.
  EntryDatacatalogV1beta1Args({
    this.bigqueryDateShardedSpec,
    this.bigqueryTableSpec,
    this.description,
    this.displayName,
    required this.entryGroupId,
    required this.entryId,
    this.gcsFilesetSpec,
    this.linkedResource,
    this.location,
    this.project,
    this.schema,
    this.type,
    this.userSpecifiedSystem,
    this.userSpecifiedType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDateShardedSpec': ?bigqueryDateShardedSpec,
      'bigqueryTableSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1beta1BigQueryTableSpec, Map<String, dynamic>>(bigqueryTableSpec, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'entryGroupId': entryGroupId,
      'entryId': entryId,
      'gcsFilesetSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1beta1GcsFilesetSpec, Map<String, dynamic>>(gcsFilesetSpec, (value) => value.toMap()),
      'linkedResource': ?linkedResource,
      'location': ?location,
      'project': ?project,
      'schema': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1beta1Schema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<EntryTypeDatacatalogV1beta1, String>(type, (value) => value.wireValue),
      'userSpecifiedSystem': ?userSpecifiedSystem,
      'userSpecifiedType': ?userSpecifiedType,
    };
  }

  factory EntryDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return EntryDatacatalogV1beta1Args(
      bigqueryDateShardedSpec: (() { final guardedValue = map['bigqueryDateShardedSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      bigqueryTableSpec: (() { final guardedValue = map['bigqueryTableSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1beta1BigQueryTableSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryGroupId: pulumi.Input.fromValue(map['entryGroupId'] as String),
      entryId: pulumi.Input.fromValue(map['entryId'] as String),
      gcsFilesetSpec: (() { final guardedValue = map['gcsFilesetSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1beta1GcsFilesetSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedResource: (() { final guardedValue = map['linkedResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1beta1Schema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntryTypeDatacatalogV1beta1.fromValue(guardedValue as String)); })(),
      userSpecifiedSystem: (() { final guardedValue = map['userSpecifiedSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userSpecifiedType: (() { final guardedValue = map['userSpecifiedType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

