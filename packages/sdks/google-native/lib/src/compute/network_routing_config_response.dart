// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A routing configuration attached to a network resource. The message includes the list of routers associated with the network, and a flag indicating the type of routing behavior to enforce network-wide.
class NetworkRoutingConfigResponse {
  /// Enable comparison of Multi-Exit Discriminators (MED) across routes with different neighbor ASNs when using the STANDARD BGP best path selection algorithm.
  final pulumi.Input<bool> bgpAlwaysCompareMed;
  /// The BGP best path selection algorithm to be employed within this network for dynamic routes learned by Cloud Routers. Can be LEGACY (default) or STANDARD.
  final pulumi.Input<String> bgpBestPathSelectionMode;
  /// Allows to define a preferred approach for handling inter-region cost in the selection process when using the STANDARD BGP best path selection algorithm. Can be DEFAULT or ADD_COST_TO_MED.
  final pulumi.Input<String> bgpInterRegionCost;
  /// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  final pulumi.Input<String> routingMode;

  /// Creates a new [NetworkRoutingConfigResponse].
  /// [bgpAlwaysCompareMed] Enable comparison of Multi-Exit Discriminators (MED) across routes with different neighbor ASNs when using the STANDARD BGP best path selection algorithm.
  /// [bgpBestPathSelectionMode] The BGP best path selection algorithm to be employed within this network for dynamic routes learned by Cloud Routers. Can be LEGACY (default) or STANDARD.
  /// [bgpInterRegionCost] Allows to define a preferred approach for handling inter-region cost in the selection process when using the STANDARD BGP best path selection algorithm. Can be DEFAULT or ADD_COST_TO_MED.
  /// [routingMode] The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  NetworkRoutingConfigResponse({
    required this.bgpAlwaysCompareMed,
    required this.bgpBestPathSelectionMode,
    required this.bgpInterRegionCost,
    required this.routingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpAlwaysCompareMed': bgpAlwaysCompareMed,
      'bgpBestPathSelectionMode': bgpBestPathSelectionMode,
      'bgpInterRegionCost': bgpInterRegionCost,
      'routingMode': routingMode,
    };
  }

  factory NetworkRoutingConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRoutingConfigResponse(
      bgpAlwaysCompareMed: pulumi.Input.fromValue(map['bgpAlwaysCompareMed'] as bool),
      bgpBestPathSelectionMode: pulumi.Input.fromValue(map['bgpBestPathSelectionMode'] as String),
      bgpInterRegionCost: pulumi.Input.fromValue(map['bgpInterRegionCost'] as String),
      routingMode: pulumi.Input.fromValue(map['routingMode'] as String),
    );
  }
}

