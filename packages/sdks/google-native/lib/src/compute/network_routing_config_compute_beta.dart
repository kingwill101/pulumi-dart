// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_routing_config_routing_mode_compute_beta.dart';

/// A routing configuration attached to a network resource. The message includes the list of routers associated with the network, and a flag indicating the type of routing behavior to enforce network-wide.
class NetworkRoutingConfigComputeBeta {
  /// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  final pulumi.Input<NetworkRoutingConfigRoutingModeComputeBeta>? routingMode;

  /// Creates a new [NetworkRoutingConfigComputeBeta].
  /// [routingMode] The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  NetworkRoutingConfigComputeBeta({
    this.routingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routingMode': ?pulumi.Input.mapOptionalInputValue<NetworkRoutingConfigRoutingModeComputeBeta, String>(routingMode, (value) => value.value),
    };
  }

  factory NetworkRoutingConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return NetworkRoutingConfigComputeBeta(
      routingMode: map['routingMode'] == null ? null : (NetworkRoutingConfigRoutingModeComputeBeta.fromValue(map['routingMode']! as String)).input(),
    );
  }
}

