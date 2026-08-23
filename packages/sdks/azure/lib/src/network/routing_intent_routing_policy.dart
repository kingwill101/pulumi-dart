// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutingIntentRoutingPolicy {
  /// A list of destinations which this routing policy is applicable to. Possible values are `Internet` and `PrivateTraffic`.
  final pulumi.Input<List<String>> destinations;
  /// The unique name for the routing policy.
  final pulumi.Input<String> name;
  /// The resource ID of the next hop on which this routing policy is applicable to.
  final pulumi.Input<String> nextHop;

  /// Creates a new [RoutingIntentRoutingPolicy].
  /// [destinations] A list of destinations which this routing policy is applicable to. Possible values are `Internet` and `PrivateTraffic`.
  /// [name] The unique name for the routing policy.
  /// [nextHop] The resource ID of the next hop on which this routing policy is applicable to.
  const RoutingIntentRoutingPolicy({
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
      destinations: pulumi.Input.fromValue((map['destinations'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
    );
  }
}
