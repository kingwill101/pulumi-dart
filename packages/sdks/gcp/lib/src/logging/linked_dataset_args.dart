// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_dataset_bigquery_dataset.dart';

/// {@template pulumi_logging_linked_dataset_linked_dataset_args_doc}
/// The set of arguments for LinkedDataset.
/// {@endtemplate}
/// {@macro pulumi_logging_linked_dataset_linked_dataset_args_doc}
class LinkedDatasetArgs {
  /// The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along
  /// with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery
  /// Views corresponding to the LogViews in the bucket.
  /// Structure is documented below.
  final pulumi.Input<List<LinkedDatasetBigqueryDataset>>? bigqueryDatasets;
  /// The bucket to which the linked dataset is attached.
  final pulumi.Input<String> bucket;
  /// Describes this link. The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;
  /// The id of the linked dataset.
  final pulumi.Input<String> linkId;
  /// The location of the linked dataset.
  final pulumi.Input<String>? location;
  /// The parent of the linked dataset.
  final pulumi.Input<String>? parent;

  /// Creates a new [LinkedDatasetArgs].
  /// [bigqueryDatasets] The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along
  /// [bucket] The bucket to which the linked dataset is attached.
  /// [description] Describes this link. The maximum length of the description is 8000 characters.
  /// [linkId] The id of the linked dataset.
  /// [location] The location of the linked dataset.
  /// [parent] The parent of the linked dataset.
  LinkedDatasetArgs({
    this.bigqueryDatasets,
    required this.bucket,
    this.description,
    required this.linkId,
    this.location,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDatasets': ?pulumi.Input.mapOptionalInputValue<List<LinkedDatasetBigqueryDataset>, List<Map<String, dynamic>>>(bigqueryDatasets, (value) => pulumi.Input.encodeList<LinkedDatasetBigqueryDataset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bucket': bucket,
      'description': ?description,
      'linkId': linkId,
      'location': ?location,
      'parent': ?parent,
    };
  }

  factory LinkedDatasetArgs.fromMap(Map<String, dynamic> map) {
    return LinkedDatasetArgs(
      bigqueryDatasets: map['bigqueryDatasets'] == null ? null : (pulumi.Input.decodeList<LinkedDatasetBigqueryDataset>(map['bigqueryDatasets'], (value) => LinkedDatasetBigqueryDataset.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bucket: (map['bucket'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      linkId: (map['linkId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
    );
  }
}

