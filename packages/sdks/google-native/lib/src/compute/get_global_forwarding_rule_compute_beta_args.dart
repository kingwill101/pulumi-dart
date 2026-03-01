// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_global_forwarding_rule_compute_beta_args_doc}
/// Arguments for getGlobalForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_global_forwarding_rule_compute_beta_args_doc}
class GetGlobalForwardingRuleComputeBetaArgs {
  final pulumi.Input<String> forwardingRule;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlobalForwardingRuleComputeBetaArgs].
  /// [forwardingRule] Required.
  /// [project] Optional.
  GetGlobalForwardingRuleComputeBetaArgs({
    required pulumi.Output<String> forwardingRule,
    pulumi.Output<String>? project,
  }) :
      forwardingRule = pulumi.Input.asInput<String>(forwardingRule),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingRule': forwardingRule,
      'project': ?project,
    };
  }

  factory GetGlobalForwardingRuleComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalForwardingRuleComputeBetaArgs(
      forwardingRule: pulumi.Output.create<String>(map['forwardingRule'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

