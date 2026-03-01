// ignore_for_file: unused_element, unnecessary_cast


/// Next hop.
class RoutingRuleNextHopResponse {
  /// Next hop address. Only required if the next hop type is VirtualAppliance.
  final String? nextHopAddress;
  /// Next hop type.
  final String nextHopType;

  /// Creates a new [RoutingRuleNextHopResponse].
  /// [nextHopAddress] Next hop address. Only required if the next hop type is VirtualAppliance.
  /// [nextHopType] Next hop type.
  RoutingRuleNextHopResponse({
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
      nextHopAddress: map['nextHopAddress'] == null ? null : map['nextHopAddress'] as String,
      nextHopType: map['nextHopType'] as String,
    );
  }
}

