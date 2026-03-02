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
    required this.resourceGroupName,
    required this.routeMapName,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'routeMapName': routeMapName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetRouteMapArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteMapArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routeMapName: (map['routeMapName'] as String).input(),
      virtualHubName: (map['virtualHubName'] as String).input(),
    );
  }
}

