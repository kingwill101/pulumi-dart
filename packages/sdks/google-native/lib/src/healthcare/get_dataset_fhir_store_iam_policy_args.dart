// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_dataset_fhir_store_iam_policy_args_doc}
/// Arguments for getDatasetFhirStoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_dataset_fhir_store_iam_policy_args_doc}
class GetDatasetFhirStoreIamPolicyArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> fhirStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetFhirStoreIamPolicyArgs].
  /// [datasetId] Required.
  /// [fhirStoreId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDatasetFhirStoreIamPolicyArgs({
    required pulumi.Output<String> datasetId,
    required pulumi.Output<String> fhirStoreId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      fhirStoreId = pulumi.Input.asInput<String>(fhirStoreId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'fhirStoreId': fhirStoreId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDatasetFhirStoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetFhirStoreIamPolicyArgs(
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      fhirStoreId: pulumi.Output.create<String>(map['fhirStoreId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

