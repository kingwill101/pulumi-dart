// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QosMinimumBandwidthRule resources.
class QosMinimumBandwidthRuleState {
  /// The direction of traffic. Defaults to "egress". Changing this updates the direction of the
  /// existing QoS minimum bandwidth rule.
  final pulumi.Input<String>? direction;
  /// The minimum kilobits per second. Changing this updates the min kbps value of the existing
  /// QoS minimum bandwidth rule.
  final pulumi.Input<int>? minKbps;
  /// The QoS policy reference. Changing this creates a new QoS minimum bandwidth rule.
  final pulumi.Input<String>? qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron QoS minimum bandwidth rule. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new QoS minimum bandwidth rule.
  final pulumi.Input<String>? region;

  /// Creates a new [QosMinimumBandwidthRuleState].
  /// [direction] The direction of traffic. Defaults to "egress". Changing this updates the direction of the
  /// [minKbps] The minimum kilobits per second. Changing this updates the min kbps value of the existing
  /// [qosPolicyId] The QoS policy reference. Changing this creates a new QoS minimum bandwidth rule.
  /// [region] The region in which to obtain the V2 Networking client.
  QosMinimumBandwidthRuleState({
    this.direction,
    this.minKbps,
    this.qosPolicyId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'minKbps': ?minKbps,
      'qosPolicyId': ?qosPolicyId,
      'region': ?region,
    };
  }

  factory QosMinimumBandwidthRuleState.fromMap(Map<String, dynamic> map) {
    return QosMinimumBandwidthRuleState(
      direction: map['direction'] == null ? null : (map['direction'] as String).input(),
      minKbps: map['minKbps'] == null ? null : (map['minKbps'] as int).input(),
      qosPolicyId: map['qosPolicyId'] == null ? null : (map['qosPolicyId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

