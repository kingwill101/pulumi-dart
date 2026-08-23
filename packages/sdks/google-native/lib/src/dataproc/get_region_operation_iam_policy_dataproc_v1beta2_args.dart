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
  const GetRegionOperationIamPolicyDataprocV1beta2Args({
    required this.operationId,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.regionId,
  });

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
      operationId: pulumi.Input.fromValue(map['operationId'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
    );
  }
}
