// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_dicom_store_healthcare_v1beta1_args_doc}
/// Arguments for getDicomStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_dicom_store_healthcare_v1beta1_args_doc}
class GetDicomStoreHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> dicomStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDicomStoreHealthcareV1beta1Args].
  /// [datasetId] Required.
  /// [dicomStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDicomStoreHealthcareV1beta1Args({
    required this.datasetId,
    required this.dicomStoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'dicomStoreId': dicomStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDicomStoreHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDicomStoreHealthcareV1beta1Args(
      datasetId: (map['datasetId'] as String).input(),
      dicomStoreId: (map['dicomStoreId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

