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
    pulumi.Output<List<LinkedDatasetBigqueryDataset>>? bigqueryDatasets,
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? lifecycleState,
    pulumi.Output<String>? linkId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
  }) :
      bigqueryDatasets = pulumi.Input.asOptionalInput<List<LinkedDatasetBigqueryDataset>>(bigqueryDatasets),
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      lifecycleState = pulumi.Input.asOptionalInput<String>(lifecycleState),
      linkId = pulumi.Input.asOptionalInput<String>(linkId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent);

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
      bigqueryDatasets: map['bigqueryDatasets'] == null ? null : pulumi.Output.create<List<LinkedDatasetBigqueryDataset>>(pulumi.Input.decodeList<LinkedDatasetBigqueryDataset>(map['bigqueryDatasets'], (value) => LinkedDatasetBigqueryDataset.fromMap((value as Map).cast<String, dynamic>()))),
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      lifecycleState: map['lifecycleState'] == null ? null : pulumi.Output.create<String>(map['lifecycleState'] as String),
      linkId: map['linkId'] == null ? null : pulumi.Output.create<String>(map['linkId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
    );
  }
}

