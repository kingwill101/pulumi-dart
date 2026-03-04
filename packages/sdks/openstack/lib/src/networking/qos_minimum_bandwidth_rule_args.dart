// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_qos_minimum_bandwidth_rule_qos_minimum_bandwidth_rule_args_doc}
/// The set of arguments for QosMinimumBandwidthRule.
/// {@endtemplate}
/// {@macro pulumi_networking_qos_minimum_bandwidth_rule_qos_minimum_bandwidth_rule_args_doc}
class QosMinimumBandwidthRuleArgs {
  /// The direction of traffic. Defaults to "egress". Changing this updates the direction of the
  /// existing QoS minimum bandwidth rule.
  final pulumi.Input<String>? direction;

  /// The minimum kilobits per second. Changing this updates the min kbps value of the existing
  /// QoS minimum bandwidth rule.
  final pulumi.Input<int> minKbps;

  /// The QoS policy reference. Changing this creates a new QoS minimum bandwidth rule.
  final pulumi.Input<String> qosPolicyId;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron QoS minimum bandwidth rule. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new QoS minimum bandwidth rule.
  final pulumi.Input<String>? region;

  /// Creates a new [QosMinimumBandwidthRuleArgs].
  /// [direction] The direction of traffic. Defaults to "egress". Changing this updates the direction of the
  /// [minKbps] The minimum kilobits per second. Changing this updates the min kbps value of the existing
  /// [qosPolicyId] The QoS policy reference. Changing this creates a new QoS minimum bandwidth rule.
  /// [region] The region in which to obtain the V2 Networking client.
  QosMinimumBandwidthRuleArgs({
    this.direction,
    required this.minKbps,
    required this.qosPolicyId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'minKbps': minKbps,
      'qosPolicyId': qosPolicyId,
      'region': ?region,
    };
  }

  factory QosMinimumBandwidthRuleArgs.fromMap(Map<String, dynamic> map) {
    return QosMinimumBandwidthRuleArgs(
      direction: (() {
        final guardedValue = map['direction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minKbps: pulumi.Input.fromValue(map['minKbps'] as int),
      qosPolicyId: pulumi.Input.fromValue(map['qosPolicyId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
