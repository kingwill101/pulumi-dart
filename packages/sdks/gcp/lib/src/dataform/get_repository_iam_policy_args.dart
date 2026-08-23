// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_get_repository_iam_policy_get_repository_iam_policy_args_doc}
/// Arguments for getRepositoryIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataform_get_repository_iam_policy_get_repository_iam_policy_args_doc}
class GetRepositoryIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the region Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> repository;

  /// Creates a new [GetRepositoryIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [repository] Used to find the parent resource to bind the IAM policy to
  const GetRepositoryIamPolicyArgs({
    this.project,
    this.region,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': ?region,
      'repository': repository,
    };
  }

  factory GetRepositoryIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryIamPolicyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: pulumi.Input.fromValue(map['repository'] as String),
    );
  }
}
