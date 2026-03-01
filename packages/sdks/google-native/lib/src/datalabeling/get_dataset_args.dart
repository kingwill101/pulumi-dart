// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalabeling_v1beta1_get_dataset_args_doc}
/// Arguments for getDataset.
/// {@endtemplate}
/// {@macro pulumi_datalabeling_v1beta1_get_dataset_args_doc}
class GetDatasetArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetArgs].
  /// [datasetId] Required.
  /// [project] Optional.
  GetDatasetArgs({
    required pulumi.Output<String> datasetId,
    pulumi.Output<String>? project,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': ?project,
    };
  }

  factory GetDatasetArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetArgs(
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

