// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_express_route_circuit_peering_args_doc}
/// Arguments for getExpressRouteCircuitPeering.
/// {@endtemplate}
/// {@macro pulumi_network_get_express_route_circuit_peering_args_doc}
class GetExpressRouteCircuitPeeringArgs {
  /// The name of the express route circuit.
  final pulumi.Input<String> circuitName;
  /// The name of the peering.
  final pulumi.Input<String> peeringName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExpressRouteCircuitPeeringArgs].
  /// [circuitName] The name of the express route circuit.
  /// [peeringName] The name of the peering.
  /// [resourceGroupName] The name of the resource group.
  GetExpressRouteCircuitPeeringArgs({
    required this.circuitName,
    required this.peeringName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuitName': circuitName,
      'peeringName': peeringName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteCircuitPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitPeeringArgs(
      circuitName: (map['circuitName'] as String).input(),
      peeringName: (map['peeringName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

