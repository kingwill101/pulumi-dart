// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_route_filter_args_doc}
/// Arguments for getRouteFilter.
/// {@endtemplate}
/// {@macro pulumi_network_get_route_filter_args_doc}
class GetRouteFilterArgs {
  /// Expands referenced express route bgp peering resources.
  final pulumi.Input<String?>? expand;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the route filter.
  final pulumi.Input<String> routeFilterName;

  /// Creates a new [GetRouteFilterArgs].
  /// [expand] Expands referenced express route bgp peering resources.
  /// [resourceGroupName] The name of the resource group.
  /// [routeFilterName] The name of the route filter.
  const GetRouteFilterArgs({
    this.expand,
    required this.resourceGroupName,
    required this.routeFilterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'routeFilterName': routeFilterName,
    };
  }

  factory GetRouteFilterArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteFilterArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routeFilterName: pulumi.Input.fromValue(map['routeFilterName'] as String),
    );
  }
}
