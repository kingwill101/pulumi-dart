// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_governance_rule_iam_policy_args_doc}
/// Arguments for getGovernanceRuleIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_governance_rule_iam_policy_args_doc}
class GetGovernanceRuleIamPolicyArgs {
  final pulumi.Input<String> governanceRuleId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGovernanceRuleIamPolicyArgs].
  /// [governanceRuleId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  const GetGovernanceRuleIamPolicyArgs({
    required this.governanceRuleId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'governanceRuleId': governanceRuleId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetGovernanceRuleIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetGovernanceRuleIamPolicyArgs(
      governanceRuleId: pulumi.Input.fromValue(map['governanceRuleId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
