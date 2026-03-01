// ignore_for_file: unused_element, unnecessary_cast


class GetPrivateCloudCircuit {
  /// The ID of the ExpressRoute Circuit.
  final String expressRouteId;
  /// The ID of the ExpressRoute Circuit private peering.
  final String expressRoutePrivatePeeringId;
  /// The CIDR of the primary subnet.
  final String primarySubnetCidr;
  /// The CIDR of the secondary subnet.
  final String secondarySubnetCidr;

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
      expressRouteId: map['expressRouteId'] as String,
      expressRoutePrivatePeeringId: map['expressRoutePrivatePeeringId'] as String,
      primarySubnetCidr: map['primarySubnetCidr'] as String,
      secondarySubnetCidr: map['secondarySubnetCidr'] as String,
    );
  }
}

