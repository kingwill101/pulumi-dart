// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_express_route_gateway_args_doc}
/// Arguments for getExpressRouteGateway.
/// {@endtemplate}
/// {@macro pulumi_network_get_express_route_gateway_args_doc}
class GetExpressRouteGatewayArgs {
  /// The name of the ExpressRoute gateway.
  final pulumi.Input<String> expressRouteGatewayName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExpressRouteGatewayArgs].
  /// [expressRouteGatewayName] The name of the ExpressRoute gateway.
  /// [resourceGroupName] The name of the resource group.
  GetExpressRouteGatewayArgs({
    required this.expressRouteGatewayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressRouteGatewayName': expressRouteGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteGatewayArgs(
      expressRouteGatewayName: (map['expressRouteGatewayName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

