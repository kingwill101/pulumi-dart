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
    required pulumi.Output<String> expressRoutePortName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expressRoutePortName = pulumi.Input.asInput<String>(expressRoutePortName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressRoutePortName': expressRoutePortName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRoutePortArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRoutePortArgs(
      expressRoutePortName: pulumi.Output.create<String>(map['expressRoutePortName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

