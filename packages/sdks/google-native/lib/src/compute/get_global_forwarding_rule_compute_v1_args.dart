// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_global_forwarding_rule_compute_v1_args_doc}
/// Arguments for getGlobalForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_global_forwarding_rule_compute_v1_args_doc}
class GetGlobalForwardingRuleComputeV1Args {
  final pulumi.Input<String> forwardingRule;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlobalForwardingRuleComputeV1Args].
  /// [forwardingRule] Required.
  /// [project] Optional.
  GetGlobalForwardingRuleComputeV1Args({
    required this.forwardingRule,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingRule': forwardingRule,
      'project': ?project,
    };
  }

  factory GetGlobalForwardingRuleComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetGlobalForwardingRuleComputeV1Args(
      forwardingRule: (map['forwardingRule'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

