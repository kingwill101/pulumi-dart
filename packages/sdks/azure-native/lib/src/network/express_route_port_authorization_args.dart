// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_express_route_port_authorization_args_doc}
/// The set of arguments for ExpressRoutePortAuthorization.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_port_authorization_args_doc}
class ExpressRoutePortAuthorizationArgs {
  /// The name of the authorization.
  final pulumi.Input<String>? authorizationName;
  /// The name of the express route port.
  final pulumi.Input<String> expressRoutePortName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ExpressRoutePortAuthorizationArgs].
  /// [authorizationName] The name of the authorization.
  /// [expressRoutePortName] The name of the express route port.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [resourceGroupName] The name of the resource group.
  ExpressRoutePortAuthorizationArgs({
    this.authorizationName,
    required this.expressRoutePortName,
    this.id,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationName': ?authorizationName,
      'expressRoutePortName': expressRoutePortName,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ExpressRoutePortAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRoutePortAuthorizationArgs(
      authorizationName: map['authorizationName'] == null ? null : (map['authorizationName']! as String).input(),
      expressRoutePortName: (map['expressRoutePortName'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

