// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A routing configuration attached to a network resource. The message includes the list of routers associated with the network, and a flag indicating the type of routing behavior to enforce network-wide.
class NetworkRoutingConfigResponseComputeV1 {
  /// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  final pulumi.Input<String> routingMode;

  /// Creates a new [NetworkRoutingConfigResponseComputeV1].
  /// [routingMode] The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  const NetworkRoutingConfigResponseComputeV1({
    required this.routingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routingMode': routingMode,
    };
  }

  factory NetworkRoutingConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return NetworkRoutingConfigResponseComputeV1(
      routingMode: pulumi.Input.fromValue(map['routingMode'] as String),
    );
  }
}
