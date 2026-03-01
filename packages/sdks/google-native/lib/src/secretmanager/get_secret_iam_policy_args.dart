// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_v1_get_secret_iam_policy_args_doc}
/// Arguments for getSecretIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_v1_get_secret_iam_policy_args_doc}
class GetSecretIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> secretId;

  /// Creates a new [GetSecretIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [secretId] Required.
  GetSecretIamPolicyArgs({
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> secretId,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      secretId = pulumi.Input.asInput<String>(secretId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'secretId': secretId,
    };
  }

  factory GetSecretIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretIamPolicyArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      secretId: pulumi.Output.create<String>(map['secretId'] as String),
    );
  }
}

