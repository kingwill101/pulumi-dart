// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_routing_config_bgp_best_path_selection_mode.dart';
import 'network_routing_config_bgp_inter_region_cost.dart';
import 'network_routing_config_routing_mode.dart';

/// A routing configuration attached to a network resource. The message includes the list of routers associated with the network, and a flag indicating the type of routing behavior to enforce network-wide.
class NetworkRoutingConfig {
  /// Enable comparison of Multi-Exit Discriminators (MED) across routes with different neighbor ASNs when using the STANDARD BGP best path selection algorithm.
  final pulumi.Input<bool>? bgpAlwaysCompareMed;
  /// The BGP best path selection algorithm to be employed within this network for dynamic routes learned by Cloud Routers. Can be LEGACY (default) or STANDARD.
  final pulumi.Input<NetworkRoutingConfigBgpBestPathSelectionMode>? bgpBestPathSelectionMode;
  /// Allows to define a preferred approach for handling inter-region cost in the selection process when using the STANDARD BGP best path selection algorithm. Can be DEFAULT or ADD_COST_TO_MED.
  final pulumi.Input<NetworkRoutingConfigBgpInterRegionCost>? bgpInterRegionCost;
  /// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  final pulumi.Input<NetworkRoutingConfigRoutingMode>? routingMode;

  /// Creates a new [NetworkRoutingConfig].
  /// [bgpAlwaysCompareMed] Enable comparison of Multi-Exit Discriminators (MED) across routes with different neighbor ASNs when using the STANDARD BGP best path selection algorithm.
  /// [bgpBestPathSelectionMode] The BGP best path selection algorithm to be employed within this network for dynamic routes learned by Cloud Routers. Can be LEGACY (default) or STANDARD.
  /// [bgpInterRegionCost] Allows to define a preferred approach for handling inter-region cost in the selection process when using the STANDARD BGP best path selection algorithm. Can be DEFAULT or ADD_COST_TO_MED.
  /// [routingMode] The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  const NetworkRoutingConfig({
    this.bgpAlwaysCompareMed,
    this.bgpBestPathSelectionMode,
    this.bgpInterRegionCost,
    this.routingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpAlwaysCompareMed': ?bgpAlwaysCompareMed,
      'bgpBestPathSelectionMode': ?pulumi.Input.mapOptionalInputValue<NetworkRoutingConfigBgpBestPathSelectionMode, String>(bgpBestPathSelectionMode, (value) => value.wireValue),
      'bgpInterRegionCost': ?pulumi.Input.mapOptionalInputValue<NetworkRoutingConfigBgpInterRegionCost, String>(bgpInterRegionCost, (value) => value.wireValue),
      'routingMode': ?pulumi.Input.mapOptionalInputValue<NetworkRoutingConfigRoutingMode, String>(routingMode, (value) => value.wireValue),
    };
  }

  factory NetworkRoutingConfig.fromMap(Map<String, dynamic> map) {
    return NetworkRoutingConfig(
      bgpAlwaysCompareMed: (() { final guardedValue = map['bgpAlwaysCompareMed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bgpBestPathSelectionMode: (() { final guardedValue = map['bgpBestPathSelectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkRoutingConfigBgpBestPathSelectionMode.fromValue(guardedValue as String)); })(),
      bgpInterRegionCost: (() { final guardedValue = map['bgpInterRegionCost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkRoutingConfigBgpInterRegionCost.fromValue(guardedValue as String)); })(),
      routingMode: (() { final guardedValue = map['routingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkRoutingConfigRoutingMode.fromValue(guardedValue as String)); })(),
    );
  }
}

