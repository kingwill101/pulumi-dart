// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_hub_route_table_v2_args_doc}
/// Arguments for getVirtualHubRouteTableV2.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_hub_route_table_v2_args_doc}
class GetVirtualHubRouteTableV2Args {
  /// The resource group name of the VirtualHubRouteTableV2.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualHubRouteTableV2.
  final pulumi.Input<String> routeTableName;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [GetVirtualHubRouteTableV2Args].
  /// [resourceGroupName] The resource group name of the VirtualHubRouteTableV2.
  /// [routeTableName] The name of the VirtualHubRouteTableV2.
  /// [virtualHubName] The name of the VirtualHub.
  GetVirtualHubRouteTableV2Args({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> routeTableName,
    required pulumi.Output<String> virtualHubName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeTableName = pulumi.Input.asInput<String>(routeTableName),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'routeTableName': routeTableName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetVirtualHubRouteTableV2Args.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubRouteTableV2Args(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routeTableName: pulumi.Output.create<String>(map['routeTableName'] as String),
      virtualHubName: pulumi.Output.create<String>(map['virtualHubName'] as String),
    );
  }
}

