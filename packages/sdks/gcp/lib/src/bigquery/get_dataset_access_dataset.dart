// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_access_dataset_dataset.dart';

class GetDatasetAccessDataset {
  /// The dataset this entry applies to
  final pulumi.Input<List<GetDatasetAccessDatasetDataset>> datasets;
  /// Which resources in the dataset this entry applies to. Currently, only views are supported,
  /// but additional target types may be added in the future. Possible values: VIEWS
  final pulumi.Input<List<String>> targetTypes;

  /// Creates a new [GetDatasetAccessDataset].
  /// [datasets] The dataset this entry applies to
  /// [targetTypes] Which resources in the dataset this entry applies to. Currently, only views are supported,
  const GetDatasetAccessDataset({
    required this.datasets,
    required this.targetTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets': pulumi.Input.mapInputValue<List<GetDatasetAccessDatasetDataset>, List<Map<String, dynamic>>>(datasets, (value) => pulumi.Input.encodeList<GetDatasetAccessDatasetDataset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetTypes': targetTypes,
    };
  }

  factory GetDatasetAccessDataset.fromMap(Map<String, dynamic> map) {
    return GetDatasetAccessDataset(
      datasets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatasetAccessDatasetDataset>(map['datasets']!, (value) => GetDatasetAccessDatasetDataset.fromMap((value as Map).cast<String, dynamic>()))),
      targetTypes: pulumi.Input.fromValue((map['targetTypes'] as List).cast<String>()),
    );
  }
}
