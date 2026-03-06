// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Next hop.
class RoutingRuleNextHop {
  /// Next hop address. Only required if the next hop type is VirtualAppliance.
  final pulumi.Input<String>? nextHopAddress;
  /// Next hop type.
  final pulumi.Input<String> nextHopType;

  /// Creates a new [RoutingRuleNextHop].
  /// [nextHopAddress] Next hop address. Only required if the next hop type is VirtualAppliance.
  /// [nextHopType] Next hop type.
  const RoutingRuleNextHop({
    this.nextHopAddress,
    required this.nextHopType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextHopAddress': ?nextHopAddress,
      'nextHopType': nextHopType,
    };
  }

  factory RoutingRuleNextHop.fromMap(Map<String, dynamic> map) {
    return RoutingRuleNextHop(
      nextHopAddress: (() { final guardedValue = map['nextHopAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopType: pulumi.Input.fromValue(map['nextHopType'] as String),
    );
  }
}

