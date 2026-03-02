// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_qos_bandwidth_limit_rule_get_qos_bandwidth_limit_rule_args_doc}
/// Arguments for getQosBandwidthLimitRule.
/// {@endtemplate}
/// {@macro pulumi_networking_get_qos_bandwidth_limit_rule_get_qos_bandwidth_limit_rule_args_doc}
class GetQosBandwidthLimitRuleArgs {
  /// The maximum burst size in kilobits of a QoS bandwidth limit rule.
  final pulumi.Input<int>? maxBurstKbps;
  /// The maximum kilobits per second of a QoS bandwidth limit rule.
  final pulumi.Input<int>? maxKbps;
  /// The QoS policy reference.
  final pulumi.Input<String> qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron QoS bandwidth limit rule. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetQosBandwidthLimitRuleArgs].
  /// [maxBurstKbps] The maximum burst size in kilobits of a QoS bandwidth limit rule.
  /// [maxKbps] The maximum kilobits per second of a QoS bandwidth limit rule.
  /// [qosPolicyId] The QoS policy reference.
  /// [region] The region in which to obtain the V2 Networking client.
  GetQosBandwidthLimitRuleArgs({
    this.maxBurstKbps,
    this.maxKbps,
    required this.qosPolicyId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxBurstKbps': ?maxBurstKbps,
      'maxKbps': ?maxKbps,
      'qosPolicyId': qosPolicyId,
      'region': ?region,
    };
  }

  factory GetQosBandwidthLimitRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetQosBandwidthLimitRuleArgs(
      maxBurstKbps: map['maxBurstKbps'] == null ? null : (map['maxBurstKbps'] as int).input(),
      maxKbps: map['maxKbps'] == null ? null : (map['maxKbps'] as int).input(),
      qosPolicyId: (map['qosPolicyId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

