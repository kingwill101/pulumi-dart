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
    pulumi.Output<String>? direction,
    required pulumi.Output<int> minKbps,
    required pulumi.Output<String> qosPolicyId,
    pulumi.Output<String>? region,
  }) :
      direction = pulumi.Input.asOptionalInput<String>(direction),
      minKbps = pulumi.Input.asInput<int>(minKbps),
      qosPolicyId = pulumi.Input.asInput<String>(qosPolicyId),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      minKbps: pulumi.Output.create<int>(map['minKbps'] as int),
      qosPolicyId: pulumi.Output.create<String>(map['qosPolicyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

