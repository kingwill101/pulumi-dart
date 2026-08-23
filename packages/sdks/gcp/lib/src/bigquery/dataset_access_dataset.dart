// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_access_dataset_dataset.dart';

class DatasetAccessDataset {
  /// The dataset this entry applies to
  /// Structure is documented below.
  final pulumi.Input<DatasetAccessDatasetDataset> dataset;
  /// Which resources in the dataset this entry applies to. Currently, only views are supported,
  /// but additional target types may be added in the future. Possible values: VIEWS
  final pulumi.Input<List<String>> targetTypes;

  /// Creates a new [DatasetAccessDataset].
  /// [dataset] The dataset this entry applies to
  /// [targetTypes] Which resources in the dataset this entry applies to. Currently, only views are supported,
  const DatasetAccessDataset({
    required this.dataset,
    required this.targetTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': pulumi.Input.mapInputValue<DatasetAccessDatasetDataset, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'targetTypes': targetTypes,
    };
  }

  factory DatasetAccessDataset.fromMap(Map<String, dynamic> map) {
    return DatasetAccessDataset(
      dataset: pulumi.Input.fromValue(DatasetAccessDatasetDataset.fromMap((map['dataset']! as Map).cast<String, dynamic>())),
      targetTypes: pulumi.Input.fromValue((map['targetTypes'] as List).cast<String>()),
    );
  }
}
