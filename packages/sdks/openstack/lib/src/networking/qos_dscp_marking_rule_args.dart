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
    required this.dscpMark,
    required this.qosPolicyId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscpMark': dscpMark,
      'qosPolicyId': qosPolicyId,
      'region': ?region,
    };
  }

  factory QosDscpMarkingRuleArgs.fromMap(Map<String, dynamic> map) {
    return QosDscpMarkingRuleArgs(
      dscpMark: pulumi.Input.fromValue(map['dscpMark'] as int),
      qosPolicyId: pulumi.Input.fromValue(map['qosPolicyId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

