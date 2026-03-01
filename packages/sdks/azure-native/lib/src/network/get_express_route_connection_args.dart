// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_express_route_connection_args_doc}
/// Arguments for getExpressRouteConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_express_route_connection_args_doc}
class GetExpressRouteConnectionArgs {
  /// The name of the ExpressRoute connection.
  final pulumi.Input<String> connectionName;
  /// The name of the ExpressRoute gateway.
  final pulumi.Input<String> expressRouteGatewayName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExpressRouteConnectionArgs].
  /// [connectionName] The name of the ExpressRoute connection.
  /// [expressRouteGatewayName] The name of the ExpressRoute gateway.
  /// [resourceGroupName] The name of the resource group.
  GetExpressRouteConnectionArgs({
    required pulumi.Output<String> connectionName,
    required pulumi.Output<String> expressRouteGatewayName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      expressRouteGatewayName = pulumi.Input.asInput<String>(expressRouteGatewayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'expressRouteGatewayName': expressRouteGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteConnectionArgs(
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      expressRouteGatewayName: pulumi.Output.create<String>(map['expressRouteGatewayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

