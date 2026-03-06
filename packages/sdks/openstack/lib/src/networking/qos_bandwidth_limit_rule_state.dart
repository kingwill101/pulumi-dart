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
  const QosBandwidthLimitRuleState({
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
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBurstKbps: (() { final guardedValue = map['maxBurstKbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxKbps: (() { final guardedValue = map['maxKbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      qosPolicyId: (() { final guardedValue = map['qosPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

