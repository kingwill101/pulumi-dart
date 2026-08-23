// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_get_secret_iam_policy_get_secret_iam_policy_args_doc}
/// Arguments for getSecretIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_get_secret_iam_policy_get_secret_iam_policy_args_doc}
class GetSecretIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> secretId;

  /// Creates a new [GetSecretIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [secretId] Used to find the parent resource to bind the IAM policy to
  const GetSecretIamPolicyArgs({
    this.project,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'secretId': secretId,
    };
  }

  factory GetSecretIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretIamPolicyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
    );
  }
}
