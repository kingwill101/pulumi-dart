// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_qos_dscp_marking_rule_get_qos_dscp_marking_rule_args_doc}
/// Arguments for getQosDscpMarkingRule.
/// {@endtemplate}
/// {@macro pulumi_networking_get_qos_dscp_marking_rule_get_qos_dscp_marking_rule_args_doc}
class GetQosDscpMarkingRuleArgs {
  /// The value of a DSCP mark.
  final pulumi.Input<int>? dscpMark;
  /// The QoS policy reference.
  final pulumi.Input<String> qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron QoS DSCP marking rule. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetQosDscpMarkingRuleArgs].
  /// [dscpMark] The value of a DSCP mark.
  /// [qosPolicyId] The QoS policy reference.
  /// [region] The region in which to obtain the V2 Networking client.
  GetQosDscpMarkingRuleArgs({
    this.dscpMark,
    required this.qosPolicyId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscpMark': ?dscpMark,
      'qosPolicyId': qosPolicyId,
      'region': ?region,
    };
  }

  factory GetQosDscpMarkingRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetQosDscpMarkingRuleArgs(
      dscpMark: map['dscpMark'] == null ? null : (map['dscpMark'] as int).input(),
      qosPolicyId: (map['qosPolicyId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

