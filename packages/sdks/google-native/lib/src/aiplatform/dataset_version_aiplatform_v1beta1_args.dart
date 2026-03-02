// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_dataset_version_aiplatform_v1beta1_args_doc}
/// The set of arguments for DatasetVersion.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_dataset_version_aiplatform_v1beta1_args_doc}
class DatasetVersionAiplatformV1beta1Args {
  final pulumi.Input<String> datasetId;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [DatasetVersionAiplatformV1beta1Args].
  /// [datasetId] Required.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [location] Optional.
  /// [project] Optional.
  DatasetVersionAiplatformV1beta1Args({
    required this.datasetId,
    this.etag,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'etag': ?etag,
      'location': ?location,
      'project': ?project,
    };
  }

  factory DatasetVersionAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return DatasetVersionAiplatformV1beta1Args(
      datasetId: (map['datasetId'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

