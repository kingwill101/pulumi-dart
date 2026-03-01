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
  GetGovernanceRuleIamPolicyArgs({
    required pulumi.Output<String> governanceRuleId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      governanceRuleId = pulumi.Input.asInput<String>(governanceRuleId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      governanceRuleId: pulumi.Output.create<String>(map['governanceRuleId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

