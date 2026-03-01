// ignore_for_file: unused_element, unnecessary_cast


/// Next hop.
class RoutingRuleNextHop {
  /// Next hop address. Only required if the next hop type is VirtualAppliance.
  final String? nextHopAddress;
  /// Next hop type.
  final String nextHopType;

  /// Creates a new [RoutingRuleNextHop].
  /// [nextHopAddress] Next hop address. Only required if the next hop type is VirtualAppliance.
  /// [nextHopType] Next hop type.
  RoutingRuleNextHop({
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
      nextHopAddress: map['nextHopAddress'] == null ? null : map['nextHopAddress'] as String,
      nextHopType: map['nextHopType'] as String,
    );
  }
}

