// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_express_route_circuit_authorization_args_doc}
/// Arguments for getExpressRouteCircuitAuthorization.
/// {@endtemplate}
/// {@macro pulumi_network_get_express_route_circuit_authorization_args_doc}
class GetExpressRouteCircuitAuthorizationArgs {
  /// The name of the authorization.
  final pulumi.Input<String> authorizationName;
  /// The name of the express route circuit.
  final pulumi.Input<String> circuitName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExpressRouteCircuitAuthorizationArgs].
  /// [authorizationName] The name of the authorization.
  /// [circuitName] The name of the express route circuit.
  /// [resourceGroupName] The name of the resource group.
  GetExpressRouteCircuitAuthorizationArgs({
    required pulumi.Output<String> authorizationName,
    required pulumi.Output<String> circuitName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authorizationName = pulumi.Input.asInput<String>(authorizationName),
      circuitName = pulumi.Input.asInput<String>(circuitName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationName': authorizationName,
      'circuitName': circuitName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteCircuitAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitAuthorizationArgs(
      authorizationName: pulumi.Output.create<String>(map['authorizationName'] as String),
      circuitName: pulumi.Output.create<String>(map['circuitName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

