// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sourcerepo_get_repository_iam_policy_get_repository_iam_policy_args_doc}
/// Arguments for getRepositoryIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_sourcerepo_get_repository_iam_policy_get_repository_iam_policy_args_doc}
class GetRepositoryIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> repository;

  /// Creates a new [GetRepositoryIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [repository] Used to find the parent resource to bind the IAM policy to
  const GetRepositoryIamPolicyArgs({
    this.project,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'repository': repository,
    };
  }

  factory GetRepositoryIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryIamPolicyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: pulumi.Input.fromValue(map['repository'] as String),
    );
  }
}
