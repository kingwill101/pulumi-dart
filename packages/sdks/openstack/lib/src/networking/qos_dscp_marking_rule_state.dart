// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QosDscpMarkingRule resources.
class QosDscpMarkingRuleState {
  /// The value of DSCP mark. Changing this updates the DSCP mark value existing
  /// QoS DSCP marking rule.
  final pulumi.Input<int>? dscpMark;
  /// The QoS policy reference. Changing this creates a new QoS DSCP marking rule.
  final pulumi.Input<String>? qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron QoS DSCP marking rule. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new QoS DSCP marking rule.
  final pulumi.Input<String>? region;

  /// Creates a new [QosDscpMarkingRuleState].
  /// [dscpMark] The value of DSCP mark. Changing this updates the DSCP mark value existing
  /// [qosPolicyId] The QoS policy reference. Changing this creates a new QoS DSCP marking rule.
  /// [region] The region in which to obtain the V2 Networking client.
  QosDscpMarkingRuleState({
    this.dscpMark,
    this.qosPolicyId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscpMark': ?dscpMark,
      'qosPolicyId': ?qosPolicyId,
      'region': ?region,
    };
  }

  factory QosDscpMarkingRuleState.fromMap(Map<String, dynamic> map) {
    return QosDscpMarkingRuleState(
      dscpMark: map['dscpMark'] == null ? null : (map['dscpMark'] as int).input(),
      qosPolicyId: map['qosPolicyId'] == null ? null : (map['qosPolicyId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

