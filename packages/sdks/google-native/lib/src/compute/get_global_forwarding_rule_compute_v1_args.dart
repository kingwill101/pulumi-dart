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

  factory GetGlobalForwardingRuleComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetGlobalForwardingRuleComputeV1Args(
      forwardingRule: pulumi.Output.create<String>(map['forwardingRule'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

