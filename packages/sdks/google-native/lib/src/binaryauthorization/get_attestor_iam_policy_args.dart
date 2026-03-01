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
    required pulumi.Output<String> attestorId,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      attestorId = pulumi.Input.asInput<String>(attestorId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestorId': attestorId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetAttestorIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAttestorIamPolicyArgs(
      attestorId: pulumi.Output.create<String>(map['attestorId'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

