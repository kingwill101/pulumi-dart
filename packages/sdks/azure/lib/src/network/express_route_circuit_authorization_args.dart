// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_express_route_circuit_authorization_express_route_circuit_authorization_args_doc}
/// The set of arguments for ExpressRouteCircuitAuthorization.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_circuit_authorization_express_route_circuit_authorization_args_doc}
class ExpressRouteCircuitAuthorizationArgs {
  /// The name of the Express Route Circuit in which to create the Authorization. Changing this forces a new resource to be created.
  final pulumi.Input<String> expressRouteCircuitName;
  /// The name of the ExpressRoute circuit. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ExpressRouteCircuitAuthorizationArgs].
  /// [expressRouteCircuitName] The name of the Express Route Circuit in which to create the Authorization. Changing this forces a new resource to be created.
  /// [name] The name of the ExpressRoute circuit. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created.
  ExpressRouteCircuitAuthorizationArgs({
    required pulumi.Output<String> expressRouteCircuitName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expressRouteCircuitName = pulumi.Input.asInput<String>(expressRouteCircuitName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressRouteCircuitName': expressRouteCircuitName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ExpressRouteCircuitAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitAuthorizationArgs(
      expressRouteCircuitName: pulumi.Output.create<String>(map['expressRouteCircuitName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

