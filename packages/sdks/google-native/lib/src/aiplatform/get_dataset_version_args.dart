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
    required pulumi.Output<String> datasetId,
    required pulumi.Output<String> datasetVersionId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? readMask,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      datasetVersionId = pulumi.Input.asInput<String>(datasetVersionId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      readMask = pulumi.Input.asOptionalInput<String>(readMask);

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
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      datasetVersionId: pulumi.Output.create<String>(map['datasetVersionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      readMask: map['readMask'] == null ? null : pulumi.Output.create<String>(map['readMask'] as String),
    );
  }
}

