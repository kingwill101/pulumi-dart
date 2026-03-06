// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_binaryauthorization_v1beta1_get_policy_iam_policy_binaryauthorization_v1beta1_args_doc}
/// Arguments for getPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_v1beta1_get_policy_iam_policy_binaryauthorization_v1beta1_args_doc}
class GetPolicyIamPolicyBinaryauthorizationV1beta1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPolicyIamPolicyBinaryauthorizationV1beta1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  const GetPolicyIamPolicyBinaryauthorizationV1beta1Args({
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetPolicyIamPolicyBinaryauthorizationV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetPolicyIamPolicyBinaryauthorizationV1beta1Args(
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

