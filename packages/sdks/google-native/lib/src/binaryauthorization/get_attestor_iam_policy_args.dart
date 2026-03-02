// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_binaryauthorization_v1_get_attestor_iam_policy_args_doc}
/// Arguments for getAttestorIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_v1_get_attestor_iam_policy_args_doc}
class GetAttestorIamPolicyArgs {
  final pulumi.Input<String> attestorId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAttestorIamPolicyArgs].
  /// [attestorId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAttestorIamPolicyArgs({
    required this.attestorId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestorId': attestorId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetAttestorIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAttestorIamPolicyArgs(
      attestorId: (map['attestorId'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

