// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sourcerepo_v1_get_repo_iam_policy_args_doc}
/// Arguments for getRepoIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_sourcerepo_v1_get_repo_iam_policy_args_doc}
class GetRepoIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repoId;

  /// Creates a new [GetRepoIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [repoId] Required.
  const GetRepoIamPolicyArgs({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.repoId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'repoId': repoId,
    };
  }

  factory GetRepoIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRepoIamPolicyArgs(
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoId: pulumi.Input.fromValue(map['repoId'] as String),
    );
  }
}
