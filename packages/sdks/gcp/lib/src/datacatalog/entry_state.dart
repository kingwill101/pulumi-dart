// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_bigquery_date_sharded_spec.dart';
import 'entry_bigquery_table_spec.dart';
import 'entry_gcs_fileset_spec.dart';

/// Input properties used for looking up and filtering Entry resources.
class EntryState {
  /// Specification for a group of BigQuery tables with name pattern [prefix]YYYYMMDD.
  /// Context: https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding.
  /// Structure is documented below.
  final pulumi.Input<List<EntryBigqueryDateShardedSpec>>? bigqueryDateShardedSpecs;
  /// Specification that applies to a BigQuery table. This is only valid on entries of type TABLE.
  /// Structure is documented below.
  final pulumi.Input<List<EntryBigqueryTableSpec>>? bigqueryTableSpecs;
  /// Entry description, which can consist of several sentences or paragraphs that describe entry contents.
  final pulumi.Input<String>? description;
  /// Display information such as title and description. A short name to identify the entry,
  /// for example, "Analytics Data - Jan 2011".
  final pulumi.Input<String>? displayName;
  /// The name of the entry group this entry is in.
  final pulumi.Input<String>? entryGroup;
  /// The id of the entry to create.
  final pulumi.Input<String>? entryId;
  /// Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET.
  /// Structure is documented below.
  final pulumi.Input<EntryGcsFilesetSpec>? gcsFilesetSpec;
  /// This field indicates the entry's source system that Data Catalog integrates with, such as BigQuery or Pub/Sub.
  final pulumi.Input<String>? integratedSystem;
  /// The resource this metadata entry refers to.
  /// For Google Cloud Platform resources, linkedResource is the full name of the resource.
  /// For example, the linkedResource for a table resource from BigQuery is:
  /// //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId
  /// Output only when Entry is of type in the EntryType enum. For entries with userSpecifiedType,
  /// this field is optional and defaults to an empty string.
  final pulumi.Input<String>? linkedResource;
  /// The Data Catalog resource name of the entry in URL format.
  /// Example: projects/{project_id}/locations/{location}/entryGroups/{entryGroupId}/entries/{entryId}.
  /// Note that this Entry and its child resources may not actually be stored in the location in this name.
  final pulumi.Input<String>? name;
  /// Schema of the entry (e.g. BigQuery, GoogleSQL, Avro schema), as a json string. An entry might not have any schema
  /// attached to it. See
  /// https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries#schema
  /// for what fields this schema can contain.
  final pulumi.Input<String>? schema;
  /// The type of the entry. Only used for Entries with types in the EntryType enum.
  /// Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use userSpecifiedType.
  /// Possible values are: `FILESET`.
  final pulumi.Input<String>? type;
  /// This field indicates the entry's source system that Data Catalog does not integrate with.
  /// userSpecifiedSystem strings must begin with a letter or underscore and can only contain letters, numbers,
  /// and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  final pulumi.Input<String>? userSpecifiedSystem;
  /// Entry type if it does not fit any of the input-allowed values listed in EntryType enum above.
  /// When creating an entry, users should check the enum values first, if nothing matches the entry
  /// to be created, then provide a custom value, for example "my_special_type".
  /// userSpecifiedType strings must begin with a letter or underscore and can only contain letters,
  /// numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  final pulumi.Input<String>? userSpecifiedType;

  /// Creates a new [EntryState].
  /// [bigqueryDateShardedSpecs] Specification for a group of BigQuery tables with name pattern [prefix]YYYYMMDD.
  /// [bigqueryTableSpecs] Specification that applies to a BigQuery table. This is only valid on entries of type TABLE.
  /// [description] Entry description, which can consist of several sentences or paragraphs that describe entry contents.
  /// [displayName] Display information such as title and description. A short name to identify the entry,
  /// [entryGroup] The name of the entry group this entry is in.
  /// [entryId] The id of the entry to create.
  /// [gcsFilesetSpec] Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET.
  /// [integratedSystem] This field indicates the entry's source system that Data Catalog integrates with, such as BigQuery or Pub/Sub.
  /// [linkedResource] The resource this metadata entry refers to.
  /// [name] The Data Catalog resource name of the entry in URL format.
  /// [schema] Schema of the entry (e.g. BigQuery, GoogleSQL, Avro schema), as a json string. An entry might not have any schema
  /// [type] The type of the entry. Only used for Entries with types in the EntryType enum.
  /// [userSpecifiedSystem] This field indicates the entry's source system that Data Catalog does not integrate with.
  /// [userSpecifiedType] Entry type if it does not fit any of the input-allowed values listed in EntryType enum above.
  EntryState({
    this.bigqueryDateShardedSpecs,
    this.bigqueryTableSpecs,
    this.description,
    this.displayName,
    this.entryGroup,
    this.entryId,
    this.gcsFilesetSpec,
    this.integratedSystem,
    this.linkedResource,
    this.name,
    this.schema,
    this.type,
    this.userSpecifiedSystem,
    this.userSpecifiedType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDateShardedSpecs': ?pulumi.Input.mapOptionalInputValue<List<EntryBigqueryDateShardedSpec>, List<Map<String, dynamic>>>(bigqueryDateShardedSpecs, (value) => pulumi.Input.encodeList<EntryBigqueryDateShardedSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bigqueryTableSpecs': ?pulumi.Input.mapOptionalInputValue<List<EntryBigqueryTableSpec>, List<Map<String, dynamic>>>(bigqueryTableSpecs, (value) => pulumi.Input.encodeList<EntryBigqueryTableSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'entryGroup': ?entryGroup,
      'entryId': ?entryId,
      'gcsFilesetSpec': ?pulumi.Input.mapOptionalInputValue<EntryGcsFilesetSpec, Map<String, dynamic>>(gcsFilesetSpec, (value) => value.toMap()),
      'integratedSystem': ?integratedSystem,
      'linkedResource': ?linkedResource,
      'name': ?name,
      'schema': ?schema,
      'type': ?type,
      'userSpecifiedSystem': ?userSpecifiedSystem,
      'userSpecifiedType': ?userSpecifiedType,
    };
  }

  factory EntryState.fromMap(Map<String, dynamic> map) {
    return EntryState(
      bigqueryDateShardedSpecs: map['bigqueryDateShardedSpecs'] == null ? null : (pulumi.Input.decodeList<EntryBigqueryDateShardedSpec>(map['bigqueryDateShardedSpecs']!, (value) => EntryBigqueryDateShardedSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bigqueryTableSpecs: map['bigqueryTableSpecs'] == null ? null : (pulumi.Input.decodeList<EntryBigqueryTableSpec>(map['bigqueryTableSpecs']!, (value) => EntryBigqueryTableSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      entryGroup: map['entryGroup'] == null ? null : (map['entryGroup']! as String).input(),
      entryId: map['entryId'] == null ? null : (map['entryId']! as String).input(),
      gcsFilesetSpec: map['gcsFilesetSpec'] == null ? null : (EntryGcsFilesetSpec.fromMap((map['gcsFilesetSpec']! as Map).cast<String, dynamic>())).input(),
      integratedSystem: map['integratedSystem'] == null ? null : (map['integratedSystem']! as String).input(),
      linkedResource: map['linkedResource'] == null ? null : (map['linkedResource']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      schema: map['schema'] == null ? null : (map['schema']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userSpecifiedSystem: map['userSpecifiedSystem'] == null ? null : (map['userSpecifiedSystem']! as String).input(),
      userSpecifiedType: map['userSpecifiedType'] == null ? null : (map['userSpecifiedType']! as String).input(),
    );
  }
}

