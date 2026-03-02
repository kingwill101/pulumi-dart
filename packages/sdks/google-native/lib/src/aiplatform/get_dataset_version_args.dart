// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_dataset_version_args_doc}
/// Arguments for getDatasetVersion.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_dataset_version_args_doc}
class GetDatasetVersionArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> datasetVersionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? readMask;

  /// Creates a new [GetDatasetVersionArgs].
  /// [datasetId] Required.
  /// [datasetVersionId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [readMask] Optional.
  GetDatasetVersionArgs({
    required this.datasetId,
    required this.datasetVersionId,
    required this.location,
    this.project,
    this.readMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'datasetVersionId': datasetVersionId,
      'location': location,
      'project': ?project,
      'readMask': ?readMask,
    };
  }

  factory GetDatasetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetVersionArgs(
      datasetId: (map['datasetId'] as String).input(),
      datasetVersionId: (map['datasetVersionId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      readMask: map['readMask'] == null ? null : (map['readMask']! as String).input(),
    );
  }
}

