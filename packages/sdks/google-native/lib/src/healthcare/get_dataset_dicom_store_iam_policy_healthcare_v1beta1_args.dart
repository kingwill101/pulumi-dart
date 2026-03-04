// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_dataset_dicom_store_iam_policy_healthcare_v1beta1_args_doc}
/// Arguments for getDatasetDicomStoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_dataset_dicom_store_iam_policy_healthcare_v1beta1_args_doc}
class GetDatasetDicomStoreIamPolicyHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> dicomStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetDicomStoreIamPolicyHealthcareV1beta1Args].
  /// [datasetId] Required.
  /// [dicomStoreId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDatasetDicomStoreIamPolicyHealthcareV1beta1Args({
    required this.datasetId,
    required this.dicomStoreId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'dicomStoreId': dicomStoreId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDatasetDicomStoreIamPolicyHealthcareV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatasetDicomStoreIamPolicyHealthcareV1beta1Args(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      dicomStoreId: pulumi.Input.fromValue(map['dicomStoreId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
