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
    pulumi.Output<String>? authorizationName,
    required pulumi.Output<String> expressRoutePortName,
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authorizationName = pulumi.Input.asOptionalInput<String>(authorizationName),
      expressRoutePortName = pulumi.Input.asInput<String>(expressRoutePortName),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      authorizationName: map['authorizationName'] == null ? null : pulumi.Output.create<String>(map['authorizationName'] as String),
      expressRoutePortName: pulumi.Output.create<String>(map['expressRoutePortName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

