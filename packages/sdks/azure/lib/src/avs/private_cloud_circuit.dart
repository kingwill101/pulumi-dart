// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateCloudCircuit {
  /// The ID of the ExpressRoute Circuit.
  final pulumi.Input<String>? expressRouteId;
  /// The ID of the ExpressRoute Circuit private peering.
  final pulumi.Input<String>? expressRoutePrivatePeeringId;
  /// The CIDR of the primary subnet.
  final pulumi.Input<String>? primarySubnetCidr;
  /// The CIDR of the secondary subnet.
  final pulumi.Input<String>? secondarySubnetCidr;

  /// Creates a new [PrivateCloudCircuit].
  /// [expressRouteId] The ID of the ExpressRoute Circuit.
  /// [expressRoutePrivatePeeringId] The ID of the ExpressRoute Circuit private peering.
  /// [primarySubnetCidr] The CIDR of the primary subnet.
  /// [secondarySubnetCidr] The CIDR of the secondary subnet.
  PrivateCloudCircuit({
    this.expressRouteId,
    this.expressRoutePrivatePeeringId,
    this.primarySubnetCidr,
    this.secondarySubnetCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressRouteId': ?expressRouteId,
      'expressRoutePrivatePeeringId': ?expressRoutePrivatePeeringId,
      'primarySubnetCidr': ?primarySubnetCidr,
      'secondarySubnetCidr': ?secondarySubnetCidr,
    };
  }

  factory PrivateCloudCircuit.fromMap(Map<String, dynamic> map) {
    return PrivateCloudCircuit(
      expressRouteId: (() { final guardedValue = map['expressRouteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressRoutePrivatePeeringId: (() { final guardedValue = map['expressRoutePrivatePeeringId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primarySubnetCidr: (() { final guardedValue = map['primarySubnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondarySubnetCidr: (() { final guardedValue = map['secondarySubnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

