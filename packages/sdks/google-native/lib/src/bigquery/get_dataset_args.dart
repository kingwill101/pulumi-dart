// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_v2_get_dataset_args_doc}
/// Arguments for getDataset.
/// {@endtemplate}
/// {@macro pulumi_bigquery_v2_get_dataset_args_doc}
class GetDatasetArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String>? datasetView;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetArgs].
  /// [datasetId] Required.
  /// [datasetView] Optional.
  /// [project] Optional.
  GetDatasetArgs({
    required this.datasetId,
    this.datasetView,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'datasetView': ?datasetView,
      'project': ?project,
    };
  }

  factory GetDatasetArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetArgs(
      datasetId: (map['datasetId'] as String).input(),
      datasetView: map['datasetView'] == null ? null : (map['datasetView']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

