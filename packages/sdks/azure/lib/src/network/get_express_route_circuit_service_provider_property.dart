// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExpressRouteCircuitServiceProviderProperty {
  /// The bandwidth in Mbps of the ExpressRoute circuit.
  final pulumi.Input<int> bandwidthInMbps;

  /// The name of the peering location and **not** the Azure resource location.
  final pulumi.Input<String> peeringLocation;

  /// The name of the ExpressRoute Service Provider.
  final pulumi.Input<String> serviceProviderName;

  /// Creates a new [GetExpressRouteCircuitServiceProviderProperty].
  /// [bandwidthInMbps] The bandwidth in Mbps of the ExpressRoute circuit.
  /// [peeringLocation] The name of the peering location and **not** the Azure resource location.
  /// [serviceProviderName] The name of the ExpressRoute Service Provider.
  GetExpressRouteCircuitServiceProviderProperty({
    required this.bandwidthInMbps,
    required this.peeringLocation,
    required this.serviceProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthInMbps': bandwidthInMbps,
      'peeringLocation': peeringLocation,
      'serviceProviderName': serviceProviderName,
    };
  }

  factory GetExpressRouteCircuitServiceProviderProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetExpressRouteCircuitServiceProviderProperty(
      bandwidthInMbps: pulumi.Input.fromValue(map['bandwidthInMbps'] as int),
      peeringLocation: pulumi.Input.fromValue(map['peeringLocation'] as String),
      serviceProviderName: pulumi.Input.fromValue(
        map['serviceProviderName'] as String,
      ),
    );
  }
}
