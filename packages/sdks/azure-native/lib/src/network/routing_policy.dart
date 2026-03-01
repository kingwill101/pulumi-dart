// ignore_for_file: unused_element, unnecessary_cast


/// The routing policy object used in a RoutingIntent resource.
class RoutingPolicy {
  /// List of all destinations which this routing policy is applicable to (for example: Internet, PrivateTraffic).
  final List<String> destinations;
  /// The unique name for the routing policy.
  final String name;
  /// The next hop resource id on which this routing policy is applicable to.
  final String nextHop;

  /// Creates a new [RoutingPolicy].
  /// [destinations] List of all destinations which this routing policy is applicable to (for example: Internet, PrivateTraffic).
  /// [name] The unique name for the routing policy.
  /// [nextHop] The next hop resource id on which this routing policy is applicable to.
  RoutingPolicy({
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

  factory RoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RoutingPolicy(
      destinations: (map['destinations'] as List).cast<String>(),
      name: map['name'] as String,
      nextHop: map['nextHop'] as String,
    );
  }
}

