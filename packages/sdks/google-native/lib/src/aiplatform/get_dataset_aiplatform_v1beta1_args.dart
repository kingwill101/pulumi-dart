// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_dataset_aiplatform_v1beta1_args_doc}
/// Arguments for getDataset.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_dataset_aiplatform_v1beta1_args_doc}
class GetDatasetAiplatformV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? readMask;

  /// Creates a new [GetDatasetAiplatformV1beta1Args].
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [readMask] Optional.
  const GetDatasetAiplatformV1beta1Args({
    required this.datasetId,
    required this.location,
    this.project,
    this.readMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'location': location,
      'project': ?project,
      'readMask': ?readMask,
    };
  }

  factory GetDatasetAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDatasetAiplatformV1beta1Args(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readMask: (() { final guardedValue = map['readMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
