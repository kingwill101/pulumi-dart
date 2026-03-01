// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_route_args_doc}
/// Arguments for getRoute.
/// {@endtemplate}
/// {@macro pulumi_network_get_route_args_doc}
class GetRouteArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the route.
  final pulumi.Input<String> routeName;
  /// The name of the route table.
  final pulumi.Input<String> routeTableName;

  /// Creates a new [GetRouteArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [routeName] The name of the route.
  /// [routeTableName] The name of the route table.
  GetRouteArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> routeName,
    required pulumi.Output<String> routeTableName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeName = pulumi.Input.asInput<String>(routeName),
      routeTableName = pulumi.Input.asInput<String>(routeTableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'routeName': routeName,
      'routeTableName': routeTableName,
    };
  }

  factory GetRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routeName: pulumi.Output.create<String>(map['routeName'] as String),
      routeTableName: pulumi.Output.create<String>(map['routeTableName'] as String),
    );
  }
}

