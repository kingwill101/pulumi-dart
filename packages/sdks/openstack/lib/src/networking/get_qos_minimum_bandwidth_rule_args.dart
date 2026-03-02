// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_qos_minimum_bandwidth_rule_get_qos_minimum_bandwidth_rule_args_doc}
/// Arguments for getQosMinimumBandwidthRule.
/// {@endtemplate}
/// {@macro pulumi_networking_get_qos_minimum_bandwidth_rule_get_qos_minimum_bandwidth_rule_args_doc}
class GetQosMinimumBandwidthRuleArgs {
  final pulumi.Input<String>? direction;
  /// The value of a minimum kbps bandwidth.
  final pulumi.Input<int>? minKbps;
  /// The QoS policy reference.
  final pulumi.Input<String> qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron QoS minimum bandwidth rule. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetQosMinimumBandwidthRuleArgs].
  /// [direction] Optional.
  /// [minKbps] The value of a minimum kbps bandwidth.
  /// [qosPolicyId] The QoS policy reference.
  /// [region] The region in which to obtain the V2 Networking client.
  GetQosMinimumBandwidthRuleArgs({
    this.direction,
    this.minKbps,
    required this.qosPolicyId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'minKbps': ?minKbps,
      'qosPolicyId': qosPolicyId,
      'region': ?region,
    };
  }

  factory GetQosMinimumBandwidthRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetQosMinimumBandwidthRuleArgs(
      direction: map['direction'] == null ? null : (map['direction'] as String).input(),
      minKbps: map['minKbps'] == null ? null : (map['minKbps'] as int).input(),
      qosPolicyId: (map['qosPolicyId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

