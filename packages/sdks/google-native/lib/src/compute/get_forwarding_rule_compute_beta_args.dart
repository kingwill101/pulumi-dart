// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_forwarding_rule_compute_beta_args_doc}
/// Arguments for getForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_forwarding_rule_compute_beta_args_doc}
class GetForwardingRuleComputeBetaArgs {
  final pulumi.Input<String> forwardingRule;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetForwardingRuleComputeBetaArgs].
  /// [forwardingRule] Required.
  /// [project] Optional.
  /// [region] Required.
  GetForwardingRuleComputeBetaArgs({
    required pulumi.Output<String> forwardingRule,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      forwardingRule = pulumi.Input.asInput<String>(forwardingRule),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingRule': forwardingRule,
      'project': ?project,
      'region': region,
    };
  }

  factory GetForwardingRuleComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleComputeBetaArgs(
      forwardingRule: pulumi.Output.create<String>(map['forwardingRule'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

