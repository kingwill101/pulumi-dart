// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressroute_get_circuit_peering_get_circuit_peering_args_doc}
/// Arguments for getCircuitPeering.
/// {@endtemplate}
/// {@macro pulumi_expressroute_get_circuit_peering_get_circuit_peering_args_doc}
class GetCircuitPeeringArgs {
  /// The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created.
  final pulumi.Input<String> expressRouteCircuitName;
  /// The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`.
  final pulumi.Input<String> peeringType;
  /// The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCircuitPeeringArgs].
  /// [expressRouteCircuitName] The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created.
  /// [peeringType] The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`.
  /// [resourceGroupName] The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created.
  GetCircuitPeeringArgs({
    required this.expressRouteCircuitName,
    required this.peeringType,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressRouteCircuitName': expressRouteCircuitName,
      'peeringType': peeringType,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCircuitPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetCircuitPeeringArgs(
      expressRouteCircuitName: (map['expressRouteCircuitName'] as String).input(),
      peeringType: (map['peeringType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

