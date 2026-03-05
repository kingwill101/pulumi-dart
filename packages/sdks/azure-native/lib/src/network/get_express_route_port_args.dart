// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_express_route_port_args_doc}
/// Arguments for getExpressRoutePort.
/// {@endtemplate}
/// {@macro pulumi_network_get_express_route_port_args_doc}
class GetExpressRoutePortArgs {
  /// The name of ExpressRoutePort.
  final pulumi.Input<String> expressRoutePortName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExpressRoutePortArgs].
  /// [expressRoutePortName] The name of ExpressRoutePort.
  /// [resourceGroupName] The name of the resource group.
  GetExpressRoutePortArgs({
    required this.expressRoutePortName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressRoutePortName': expressRoutePortName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRoutePortArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRoutePortArgs(
      expressRoutePortName: pulumi.Input.fromValue(map['expressRoutePortName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

