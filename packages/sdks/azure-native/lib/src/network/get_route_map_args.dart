// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_route_map_args_doc}
/// Arguments for getRouteMap.
/// {@endtemplate}
/// {@macro pulumi_network_get_route_map_args_doc}
class GetRouteMapArgs {
  /// The resource group name of the RouteMap's resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the RouteMap.
  final pulumi.Input<String> routeMapName;
  /// The name of the VirtualHub containing the RouteMap.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [GetRouteMapArgs].
  /// [resourceGroupName] The resource group name of the RouteMap's resource group.
  /// [routeMapName] The name of the RouteMap.
  /// [virtualHubName] The name of the VirtualHub containing the RouteMap.
  GetRouteMapArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> routeMapName,
    required pulumi.Output<String> virtualHubName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeMapName = pulumi.Input.asInput<String>(routeMapName),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'routeMapName': routeMapName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetRouteMapArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteMapArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routeMapName: pulumi.Output.create<String>(map['routeMapName'] as String),
      virtualHubName: pulumi.Output.create<String>(map['virtualHubName'] as String),
    );
  }
}

