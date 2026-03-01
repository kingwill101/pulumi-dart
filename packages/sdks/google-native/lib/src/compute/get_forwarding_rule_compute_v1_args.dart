// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_forwarding_rule_compute_v1_args_doc}
/// Arguments for getForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_forwarding_rule_compute_v1_args_doc}
class GetForwardingRuleComputeV1Args {
  final pulumi.Input<String> forwardingRule;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetForwardingRuleComputeV1Args].
  /// [forwardingRule] Required.
  /// [project] Optional.
  /// [region] Required.
  GetForwardingRuleComputeV1Args({
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

  factory GetForwardingRuleComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleComputeV1Args(
      forwardingRule: pulumi.Output.create<String>(map['forwardingRule'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

