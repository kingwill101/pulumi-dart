// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_dataset_healthcare_v1beta1_args_doc}
/// Arguments for getDataset.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_dataset_healthcare_v1beta1_args_doc}
class GetDatasetHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetHealthcareV1beta1Args].
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDatasetHealthcareV1beta1Args({
    required this.datasetId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDatasetHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDatasetHealthcareV1beta1Args(
      datasetId: (map['datasetId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

