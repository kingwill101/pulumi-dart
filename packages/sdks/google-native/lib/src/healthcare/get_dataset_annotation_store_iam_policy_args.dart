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
    required pulumi.Output<String> annotationStoreId,
    required pulumi.Output<String> datasetId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      annotationStoreId = pulumi.Input.asInput<String>(annotationStoreId),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      annotationStoreId: pulumi.Output.create<String>(map['annotationStoreId'] as String),
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

