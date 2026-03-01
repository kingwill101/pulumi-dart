// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_express_route_circuit_get_express_route_circuit_args_doc}
/// Arguments for getExpressRouteCircuit.
/// {@endtemplate}
/// {@macro pulumi_network_get_express_route_circuit_get_express_route_circuit_args_doc}
class GetExpressRouteCircuitArgs {
  /// The name of the ExpressRoute circuit.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the ExpressRoute circuit exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExpressRouteCircuitArgs].
  /// [name] The name of the ExpressRoute circuit.
  /// [resourceGroupName] The Name of the Resource Group where the ExpressRoute circuit exists.
  GetExpressRouteCircuitArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteCircuitArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

