// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The routing policy object used in a RoutingIntent resource.
class RoutingPolicy {
  /// List of all destinations which this routing policy is applicable to (for example: Internet, PrivateTraffic).
  final pulumi.Input<List<String>> destinations;
  /// The unique name for the routing policy.
  final pulumi.Input<String> name;
  /// The next hop resource id on which this routing policy is applicable to.
  final pulumi.Input<String> nextHop;

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
      destinations: pulumi.Input.fromValue((map['destinations'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
    );
  }
}

