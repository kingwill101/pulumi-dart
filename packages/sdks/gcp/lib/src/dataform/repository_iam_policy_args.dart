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
      policyData: (map['policyData'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      repository: (map['repository'] as String).input(),
    );
  }
}

