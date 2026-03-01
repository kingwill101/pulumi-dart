// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_region_operation_iam_policy_dataproc_v1beta2_args_doc}
/// Arguments for getRegionOperationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_region_operation_iam_policy_dataproc_v1beta2_args_doc}
class GetRegionOperationIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> operationId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionOperationIamPolicyDataprocV1beta2Args].
  /// [operationId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [regionId] Required.
  GetRegionOperationIamPolicyDataprocV1beta2Args({
    required pulumi.Output<String> operationId,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> regionId,
  }) :
      operationId = pulumi.Input.asInput<String>(operationId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      regionId = pulumi.Input.asInput<String>(regionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': operationId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetRegionOperationIamPolicyDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetRegionOperationIamPolicyDataprocV1beta2Args(
      operationId: pulumi.Output.create<String>(map['operationId'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      regionId: pulumi.Output.create<String>(map['regionId'] as String),
    );
  }
}

