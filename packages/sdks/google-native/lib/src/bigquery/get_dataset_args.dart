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
    required pulumi.Output<String> datasetId,
    pulumi.Output<String>? datasetView,
    pulumi.Output<String>? project,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      datasetView = pulumi.Input.asOptionalInput<String>(datasetView),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'datasetView': ?datasetView,
      'project': ?project,
    };
  }

  factory GetDatasetArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetArgs(
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      datasetView: map['datasetView'] == null ? null : pulumi.Output.create<String>(map['datasetView'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

