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
  const GetExpressRouteCircuitAuthorizationArgs({
    required this.authorizationName,
    required this.circuitName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationName': authorizationName,
      'circuitName': circuitName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteCircuitAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitAuthorizationArgs(
      authorizationName: pulumi.Input.fromValue(map['authorizationName'] as String),
      circuitName: pulumi.Input.fromValue(map['circuitName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

