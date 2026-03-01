// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_express_route_circuit_connection_args_doc}
/// Arguments for getExpressRouteCircuitConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_express_route_circuit_connection_args_doc}
class GetExpressRouteCircuitConnectionArgs {
  /// The name of the express route circuit.
  final pulumi.Input<String> circuitName;
  /// The name of the express route circuit connection.
  final pulumi.Input<String> connectionName;
  /// The name of the peering.
  final pulumi.Input<String> peeringName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExpressRouteCircuitConnectionArgs].
  /// [circuitName] The name of the express route circuit.
  /// [connectionName] The name of the express route circuit connection.
  /// [peeringName] The name of the peering.
  /// [resourceGroupName] The name of the resource group.
  GetExpressRouteCircuitConnectionArgs({
    required pulumi.Output<String> circuitName,
    required pulumi.Output<String> connectionName,
    required pulumi.Output<String> peeringName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      circuitName = pulumi.Input.asInput<String>(circuitName),
      connectionName = pulumi.Input.asInput<String>(connectionName),
      peeringName = pulumi.Input.asInput<String>(peeringName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuitName': circuitName,
      'connectionName': connectionName,
      'peeringName': peeringName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteCircuitConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitConnectionArgs(
      circuitName: pulumi.Output.create<String>(map['circuitName'] as String),
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      peeringName: pulumi.Output.create<String>(map['peeringName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

