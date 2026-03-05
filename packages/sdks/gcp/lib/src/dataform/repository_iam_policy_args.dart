// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_repository_iam_policy_repository_iam_policy_args_doc}
/// The set of arguments for RepositoryIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataform_repository_iam_policy_repository_iam_policy_args_doc}
class RepositoryIamPolicyArgs {
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;
  final pulumi.Input<String> repository;

  /// Creates a new [RepositoryIamPolicyArgs].
  /// [policyData] Required.
  /// [project] Optional.
  /// [region] Optional.
  /// [repository] Required.
  RepositoryIamPolicyArgs({
    required this.policyData,
    this.project,
    this.region,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyData': policyData,
      'project': ?project,
      'region': ?region,
      'repository': repository,
    };
  }

  factory RepositoryIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryIamPolicyArgs(
      policyData: pulumi.Input.fromValue(map['policyData'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: pulumi.Input.fromValue(map['repository'] as String),
    );
  }
}

