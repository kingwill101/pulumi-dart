// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_express_route_port_authorization_express_route_port_authorization_args_doc}
/// The set of arguments for ExpressRoutePortAuthorization.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_port_authorization_express_route_port_authorization_args_doc}
class ExpressRoutePortAuthorizationArgs {
  /// The name of the Express Route Port in which to create the Authorization. Changing this forces a new resource to be created.
  final pulumi.Input<String> expressRoutePortName;
  /// The name of the ExpressRoute Port. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the ExpressRoute Port. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ExpressRoutePortAuthorizationArgs].
  /// [expressRoutePortName] The name of the Express Route Port in which to create the Authorization. Changing this forces a new resource to be created.
  /// [name] The name of the ExpressRoute Port. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the ExpressRoute Port. Changing this forces a new resource to be created.
  const ExpressRoutePortAuthorizationArgs({
    required this.expressRoutePortName,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressRoutePortName': expressRoutePortName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ExpressRoutePortAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRoutePortAuthorizationArgs(
      expressRoutePortName: pulumi.Input.fromValue(map['expressRoutePortName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
