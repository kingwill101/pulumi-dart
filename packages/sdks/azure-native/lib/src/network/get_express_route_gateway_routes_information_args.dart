// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_express_route_gateway_routes_information_args_doc}
/// Arguments for getExpressRouteGatewayRoutesInformation.
/// {@endtemplate}
/// {@macro pulumi_network_get_express_route_gateway_routes_information_args_doc}
class GetExpressRouteGatewayRoutesInformationArgs {
  /// Whether to attempt a refresh of the route sets.
  final pulumi.Input<bool?>? attemptRefresh;
  /// The name of the ExpressRoute gateway.
  final pulumi.Input<String> expressRouteGatewayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExpressRouteGatewayRoutesInformationArgs].
  /// [attemptRefresh] Whether to attempt a refresh of the route sets.
  /// [expressRouteGatewayName] The name of the ExpressRoute gateway.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetExpressRouteGatewayRoutesInformationArgs({
    this.attemptRefresh,
    required this.expressRouteGatewayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attemptRefresh': ?attemptRefresh,
      'expressRouteGatewayName': expressRouteGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteGatewayRoutesInformationArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteGatewayRoutesInformationArgs(
      attemptRefresh: (() { final guardedValue = map['attemptRefresh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expressRouteGatewayName: pulumi.Input.fromValue(map['expressRouteGatewayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
