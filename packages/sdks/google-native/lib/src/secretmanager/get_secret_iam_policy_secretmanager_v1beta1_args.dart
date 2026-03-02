// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_v1beta1_get_secret_iam_policy_secretmanager_v1beta1_args_doc}
/// Arguments for getSecretIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_v1beta1_get_secret_iam_policy_secretmanager_v1beta1_args_doc}
class GetSecretIamPolicySecretmanagerV1beta1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> secretId;

  /// Creates a new [GetSecretIamPolicySecretmanagerV1beta1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [secretId] Required.
  GetSecretIamPolicySecretmanagerV1beta1Args({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'secretId': secretId,
    };
  }

  factory GetSecretIamPolicySecretmanagerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetSecretIamPolicySecretmanagerV1beta1Args(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      secretId: (map['secretId'] as String).input(),
    );
  }
}

