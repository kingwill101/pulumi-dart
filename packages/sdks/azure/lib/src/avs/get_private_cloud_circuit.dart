// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrivateCloudCircuit {
  /// The ID of the ExpressRoute Circuit.
  final pulumi.Input<String> expressRouteId;
  /// The ID of the ExpressRoute Circuit private peering.
  final pulumi.Input<String> expressRoutePrivatePeeringId;
  /// The CIDR of the primary subnet.
  final pulumi.Input<String> primarySubnetCidr;
  /// The CIDR of the secondary subnet.
  final pulumi.Input<String> secondarySubnetCidr;

  /// Creates a new [GetPrivateCloudCircuit].
  /// [expressRouteId] The ID of the ExpressRoute Circuit.
  /// [expressRoutePrivatePeeringId] The ID of the ExpressRoute Circuit private peering.
  /// [primarySubnetCidr] The CIDR of the primary subnet.
  /// [secondarySubnetCidr] The CIDR of the secondary subnet.
  GetPrivateCloudCircuit({
    required this.expressRouteId,
    required this.expressRoutePrivatePeeringId,
    required this.primarySubnetCidr,
    required this.secondarySubnetCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressRouteId': expressRouteId,
      'expressRoutePrivatePeeringId': expressRoutePrivatePeeringId,
      'primarySubnetCidr': primarySubnetCidr,
      'secondarySubnetCidr': secondarySubnetCidr,
    };
  }

  factory GetPrivateCloudCircuit.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudCircuit(
      expressRouteId: pulumi.Input.fromValue(map['expressRouteId'] as String),
      expressRoutePrivatePeeringId: pulumi.Input.fromValue(map['expressRoutePrivatePeeringId'] as String),
      primarySubnetCidr: pulumi.Input.fromValue(map['primarySubnetCidr'] as String),
      secondarySubnetCidr: pulumi.Input.fromValue(map['secondarySubnetCidr'] as String),
    );
  }
}

