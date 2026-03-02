// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QosBandwidthLimitRule resources.
class QosBandwidthLimitRuleState {
  /// The direction of traffic. Defaults to "egress". Changing this updates the direction of the
  /// existing QoS bandwidth limit rule.
  final pulumi.Input<String>? direction;
  /// The maximum burst size in kilobits of a QoS bandwidth limit rule. Changing this updates the
  /// maximum burst size in kilobits of the existing QoS bandwidth limit rule.
  final pulumi.Input<int>? maxBurstKbps;
  /// The maximum kilobits per second of a QoS bandwidth limit rule. Changing this updates the
  /// maximum kilobits per second of the existing QoS bandwidth limit rule.
  final pulumi.Input<int>? maxKbps;
  /// The QoS policy reference. Changing this creates a new QoS bandwidth limit rule.
  final pulumi.Input<String>? qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron QoS bandwidth limit rule. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new QoS bandwidth limit rule.
  final pulumi.Input<String>? region;

  /// Creates a new [QosBandwidthLimitRuleState].
  /// [direction] The direction of traffic. Defaults to "egress". Changing this updates the direction of the
  /// [maxBurstKbps] The maximum burst size in kilobits of a QoS bandwidth limit rule. Changing this updates the
  /// [maxKbps] The maximum kilobits per second of a QoS bandwidth limit rule. Changing this updates the
  /// [qosPolicyId] The QoS policy reference. Changing this creates a new QoS bandwidth limit rule.
  /// [region] The region in which to obtain the V2 Networking client.
  QosBandwidthLimitRuleState({
    this.direction,
    this.maxBurstKbps,
    this.maxKbps,
    this.qosPolicyId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'maxBurstKbps': ?maxBurstKbps,
      'maxKbps': ?maxKbps,
      'qosPolicyId': ?qosPolicyId,
      'region': ?region,
    };
  }

  factory QosBandwidthLimitRuleState.fromMap(Map<String, dynamic> map) {
    return QosBandwidthLimitRuleState(
      direction: map['direction'] == null ? null : (map['direction'] as String).input(),
      maxBurstKbps: map['maxBurstKbps'] == null ? null : (map['maxBurstKbps'] as int).input(),
      maxKbps: map['maxKbps'] == null ? null : (map['maxKbps'] as int).input(),
      qosPolicyId: map['qosPolicyId'] == null ? null : (map['qosPolicyId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

