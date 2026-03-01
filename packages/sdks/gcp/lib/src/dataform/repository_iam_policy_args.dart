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
    required pulumi.Output<String> policyData,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    required pulumi.Output<String> repository,
  }) :
      policyData = pulumi.Input.asInput<String>(policyData),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      repository = pulumi.Input.asInput<String>(repository);

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
      policyData: pulumi.Output.create<String>(map['policyData'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repository: pulumi.Output.create<String>(map['repository'] as String),
    );
  }
}

