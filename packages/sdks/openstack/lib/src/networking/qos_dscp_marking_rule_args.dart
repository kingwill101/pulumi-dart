// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_qos_dscp_marking_rule_qos_dscp_marking_rule_args_doc}
/// The set of arguments for QosDscpMarkingRule.
/// {@endtemplate}
/// {@macro pulumi_networking_qos_dscp_marking_rule_qos_dscp_marking_rule_args_doc}
class QosDscpMarkingRuleArgs {
  /// The value of DSCP mark. Changing this updates the DSCP mark value existing
  /// QoS DSCP marking rule.
  final pulumi.Input<int> dscpMark;
  /// The QoS policy reference. Changing this creates a new QoS DSCP marking rule.
  final pulumi.Input<String> qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron QoS DSCP marking rule. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new QoS DSCP marking rule.
  final pulumi.Input<String>? region;

  /// Creates a new [QosDscpMarkingRuleArgs].
  /// [dscpMark] The value of DSCP mark. Changing this updates the DSCP mark value existing
  /// [qosPolicyId] The QoS policy reference. Changing this creates a new QoS DSCP marking rule.
  /// [region] The region in which to obtain the V2 Networking client.
  QosDscpMarkingRuleArgs({
    required pulumi.Output<int> dscpMark,
    required pulumi.Output<String> qosPolicyId,
    pulumi.Output<String>? region,
  }) :
      dscpMark = pulumi.Input.asInput<int>(dscpMark),
      qosPolicyId = pulumi.Input.asInput<String>(qosPolicyId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscpMark': dscpMark,
      'qosPolicyId': qosPolicyId,
      'region': ?region,
    };
  }

  factory QosDscpMarkingRuleArgs.fromMap(Map<String, dynamic> map) {
    return QosDscpMarkingRuleArgs(
      dscpMark: pulumi.Output.create<int>(map['dscpMark'] as int),
      qosPolicyId: pulumi.Output.create<String>(map['qosPolicyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

