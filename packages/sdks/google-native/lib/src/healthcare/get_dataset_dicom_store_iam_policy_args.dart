// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_dataset_dicom_store_iam_policy_args_doc}
/// Arguments for getDatasetDicomStoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_dataset_dicom_store_iam_policy_args_doc}
class GetDatasetDicomStoreIamPolicyArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> dicomStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetDicomStoreIamPolicyArgs].
  /// [datasetId] Required.
  /// [dicomStoreId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDatasetDicomStoreIamPolicyArgs({
    required pulumi.Output<String> datasetId,
    required pulumi.Output<String> dicomStoreId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      dicomStoreId = pulumi.Input.asInput<String>(dicomStoreId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'dicomStoreId': dicomStoreId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDatasetDicomStoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetDicomStoreIamPolicyArgs(
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      dicomStoreId: pulumi.Output.create<String>(map['dicomStoreId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

