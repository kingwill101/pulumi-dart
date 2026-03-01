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
    required pulumi.Output<String> circuitName,
    required pulumi.Output<String> peeringName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      circuitName = pulumi.Input.asInput<String>(circuitName),
      peeringName = pulumi.Input.asInput<String>(peeringName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuitName': circuitName,
      'peeringName': peeringName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteCircuitPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitPeeringArgs(
      circuitName: pulumi.Output.create<String>(map['circuitName'] as String),
      peeringName: pulumi.Output.create<String>(map['peeringName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

