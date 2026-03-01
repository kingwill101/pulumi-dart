// ignore_for_file: unused_element, unnecessary_cast


class RoutingIntentRoutingPolicy {
  /// A list of destinations which this routing policy is applicable to. Possible values are `Internet` and `PrivateTraffic`.
  final List<String> destinations;
  /// The unique name for the routing policy.
  final String name;
  /// The resource ID of the next hop on which this routing policy is applicable to.
  final String nextHop;

  /// Creates a new [RoutingIntentRoutingPolicy].
  /// [destinations] A list of destinations which this routing policy is applicable to. Possible values are `Internet` and `PrivateTraffic`.
  /// [name] The unique name for the routing policy.
  /// [nextHop] The resource ID of the next hop on which this routing policy is applicable to.
  RoutingIntentRoutingPolicy({
    required this.destinations,
    required this.name,
    required this.nextHop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': destinations,
      'name': name,
      'nextHop': nextHop,
    };
  }

  factory RoutingIntentRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RoutingIntentRoutingPolicy(
      destinations: (map['destinations'] as List).cast<String>(),
      name: map['name'] as String,
      nextHop: map['nextHop'] as String,
    );
  }
}

