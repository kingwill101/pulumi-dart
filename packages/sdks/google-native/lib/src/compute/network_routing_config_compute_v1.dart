// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_routing_config_routing_mode_compute_v1.dart';

/// A routing configuration attached to a network resource. The message includes the list of routers associated with the network, and a flag indicating the type of routing behavior to enforce network-wide.
class NetworkRoutingConfigComputeV1 {
  /// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  final pulumi.Input<NetworkRoutingConfigRoutingModeComputeV1>? routingMode;

  /// Creates a new [NetworkRoutingConfigComputeV1].
  /// [routingMode] The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  NetworkRoutingConfigComputeV1({this.routingMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routingMode':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkRoutingConfigRoutingModeComputeV1,
            String
          >(routingMode, (value) => value.wireValue),
    };
  }

  factory NetworkRoutingConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return NetworkRoutingConfigComputeV1(
      routingMode: (() {
        final guardedValue = map['routingMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkRoutingConfigRoutingModeComputeV1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
