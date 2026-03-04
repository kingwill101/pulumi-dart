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
    required this.forwardingRule,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingRule': forwardingRule,
      'project': ?project,
    };
  }

  factory GetGlobalForwardingRuleComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGlobalForwardingRuleComputeBetaArgs(
      forwardingRule: pulumi.Input.fromValue(map['forwardingRule'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
