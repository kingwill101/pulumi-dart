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
    required this.connectionName,
    required this.expressRouteGatewayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'expressRouteGatewayName': expressRouteGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteConnectionArgs(
      connectionName: (map['connectionName'] as String).input(),
      expressRouteGatewayName: (map['expressRouteGatewayName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

