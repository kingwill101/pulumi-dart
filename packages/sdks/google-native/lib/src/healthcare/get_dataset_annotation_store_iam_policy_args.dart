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
  GetDatasetAnnotationStoreIamPolicyArgs({
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
      annotationStoreId: (map['annotationStoreId'] as String).input(),
      datasetId: (map['datasetId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

