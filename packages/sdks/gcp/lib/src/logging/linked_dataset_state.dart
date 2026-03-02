// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_dataset_bigquery_dataset.dart';

/// Input properties used for looking up and filtering LinkedDataset resources.
class LinkedDatasetState {
  /// The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along
  /// with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery
  /// Views corresponding to the LogViews in the bucket.
  /// Structure is documented below.
  final pulumi.Input<List<LinkedDatasetBigqueryDataset>>? bigqueryDatasets;
  /// The bucket to which the linked dataset is attached.
  final pulumi.Input<String>? bucket;
  /// Output only. The creation timestamp of the link. A timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z"
  /// and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// Describes this link. The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;
  /// Output only. The linked dataset lifecycle state.
  final pulumi.Input<String>? lifecycleState;
  /// The id of the linked dataset.
  final pulumi.Input<String>? linkId;
  /// The location of the linked dataset.
  final pulumi.Input<String>? location;
  /// The resource name of the linked dataset. The name can have up to 100 characters. A valid link id
  /// (at the end of the link name) must only have alphanumeric characters and underscores within it.
  final pulumi.Input<String>? name;
  /// The parent of the linked dataset.
  final pulumi.Input<String>? parent;

  /// Creates a new [LinkedDatasetState].
  /// [bigqueryDatasets] The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along
  /// [bucket] The bucket to which the linked dataset is attached.
  /// [createTime] Output only. The creation timestamp of the link. A timestamp in RFC3339 UTC "Zulu" format,
  /// [description] Describes this link. The maximum length of the description is 8000 characters.
  /// [lifecycleState] Output only. The linked dataset lifecycle state.
  /// [linkId] The id of the linked dataset.
  /// [location] The location of the linked dataset.
  /// [name] The resource name of the linked dataset. The name can have up to 100 characters. A valid link id
  /// [parent] The parent of the linked dataset.
  LinkedDatasetState({
    this.bigqueryDatasets,
    this.bucket,
    this.createTime,
    this.description,
    this.lifecycleState,
    this.linkId,
    this.location,
    this.name,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDatasets': ?pulumi.Input.mapOptionalInputValue<List<LinkedDatasetBigqueryDataset>, List<Map<String, dynamic>>>(bigqueryDatasets, (value) => pulumi.Input.encodeList<LinkedDatasetBigqueryDataset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bucket': ?bucket,
      'createTime': ?createTime,
      'description': ?description,
      'lifecycleState': ?lifecycleState,
      'linkId': ?linkId,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
    };
  }

  factory LinkedDatasetState.fromMap(Map<String, dynamic> map) {
    return LinkedDatasetState(
      bigqueryDatasets: map['bigqueryDatasets'] == null ? null : (pulumi.Input.decodeList<LinkedDatasetBigqueryDataset>(map['bigqueryDatasets']!, (value) => LinkedDatasetBigqueryDataset.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bucket: map['bucket'] == null ? null : (map['bucket']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      lifecycleState: map['lifecycleState'] == null ? null : (map['lifecycleState']! as String).input(),
      linkId: map['linkId'] == null ? null : (map['linkId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
    );
  }
}

