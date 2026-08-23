// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_express_route_port_authorization_args_doc}
/// Arguments for getExpressRoutePortAuthorization.
/// {@endtemplate}
/// {@macro pulumi_network_get_express_route_port_authorization_args_doc}
class GetExpressRoutePortAuthorizationArgs {
  /// The name of the authorization.
  final pulumi.Input<String> authorizationName;
  /// The name of the express route port.
  final pulumi.Input<String> expressRoutePortName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExpressRoutePortAuthorizationArgs].
  /// [authorizationName] The name of the authorization.
  /// [expressRoutePortName] The name of the express route port.
  /// [resourceGroupName] The name of the resource group.
  const GetExpressRoutePortAuthorizationArgs({
    required this.authorizationName,
    required this.expressRoutePortName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationName': authorizationName,
      'expressRoutePortName': expressRoutePortName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRoutePortAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRoutePortAuthorizationArgs(
      authorizationName: pulumi.Input.fromValue(map['authorizationName'] as String),
      expressRoutePortName: pulumi.Input.fromValue(map['expressRoutePortName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
