// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_dataset_hl7_v2_store_iam_policy_args_doc}
/// Arguments for getDatasetHl7V2StoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_dataset_hl7_v2_store_iam_policy_args_doc}
class GetDatasetHl7V2StoreIamPolicyArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> hl7V2StoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetHl7V2StoreIamPolicyArgs].
  /// [datasetId] Required.
  /// [hl7V2StoreId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDatasetHl7V2StoreIamPolicyArgs({
    required pulumi.Output<String> datasetId,
    required pulumi.Output<String> hl7V2StoreId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      hl7V2StoreId = pulumi.Input.asInput<String>(hl7V2StoreId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'hl7V2StoreId': hl7V2StoreId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDatasetHl7V2StoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetHl7V2StoreIamPolicyArgs(
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      hl7V2StoreId: pulumi.Output.create<String>(map['hl7V2StoreId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

