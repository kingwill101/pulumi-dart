// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_express_route_circuit_args_doc}
/// Arguments for getExpressRouteCircuit.
/// {@endtemplate}
/// {@macro pulumi_network_get_express_route_circuit_args_doc}
class GetExpressRouteCircuitArgs {
  /// The name of express route circuit.
  final pulumi.Input<String> circuitName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExpressRouteCircuitArgs].
  /// [circuitName] The name of express route circuit.
  /// [resourceGroupName] The name of the resource group.
  GetExpressRouteCircuitArgs({
    required this.circuitName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuitName': circuitName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteCircuitArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitArgs(
      circuitName: (map['circuitName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

