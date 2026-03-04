// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_hub_route_table_args_doc}
/// Arguments for getHubRouteTable.
/// {@endtemplate}
/// {@macro pulumi_network_get_hub_route_table_args_doc}
class GetHubRouteTableArgs {
  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the RouteTable.
  final pulumi.Input<String> routeTableName;

  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [GetHubRouteTableArgs].
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [routeTableName] The name of the RouteTable.
  /// [virtualHubName] The name of the VirtualHub.
  GetHubRouteTableArgs({
    required this.resourceGroupName,
    required this.routeTableName,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'routeTableName': routeTableName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetHubRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return GetHubRouteTableArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      routeTableName: pulumi.Input.fromValue(map['routeTableName'] as String),
      virtualHubName: pulumi.Input.fromValue(map['virtualHubName'] as String),
    );
  }
}
