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
    required pulumi.Output<String> circuitName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      circuitName = pulumi.Input.asInput<String>(circuitName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuitName': circuitName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteCircuitArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitArgs(
      circuitName: pulumi.Output.create<String>(map['circuitName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

