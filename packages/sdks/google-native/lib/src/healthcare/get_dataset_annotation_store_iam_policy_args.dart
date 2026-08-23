// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_dataset_annotation_store_iam_policy_args_doc}
/// Arguments for getDatasetAnnotationStoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_dataset_annotation_store_iam_policy_args_doc}
class GetDatasetAnnotationStoreIamPolicyArgs {
  final pulumi.Input<String> annotationStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetAnnotationStoreIamPolicyArgs].
  /// [annotationStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  const GetDatasetAnnotationStoreIamPolicyArgs({
    required this.annotationStoreId,
    required this.datasetId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationStoreId': annotationStoreId,
      'datasetId': datasetId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDatasetAnnotationStoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetAnnotationStoreIamPolicyArgs(
      annotationStoreId: pulumi.Input.fromValue(map['annotationStoreId'] as String),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
