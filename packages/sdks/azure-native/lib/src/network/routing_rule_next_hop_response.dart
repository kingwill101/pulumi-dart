// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Next hop.
class RoutingRuleNextHopResponse {
  /// Next hop address. Only required if the next hop type is VirtualAppliance.
  final pulumi.Input<String?>? nextHopAddress;
  /// Next hop type.
  final pulumi.Input<String> nextHopType;

  /// Creates a new [RoutingRuleNextHopResponse].
  /// [nextHopAddress] Next hop address. Only required if the next hop type is VirtualAppliance.
  /// [nextHopType] Next hop type.
  const RoutingRuleNextHopResponse({
    this.nextHopAddress,
    required this.nextHopType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextHopAddress': ?nextHopAddress,
      'nextHopType': nextHopType,
    };
  }

  factory RoutingRuleNextHopResponse.fromMap(Map<String, dynamic> map) {
    return RoutingRuleNextHopResponse(
      nextHopAddress: (() { final guardedValue = map['nextHopAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopType: pulumi.Input.fromValue(map['nextHopType'] as String),
    );
  }
}
