// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_route_table_args_doc}
/// Arguments for getRouteTable.
/// {@endtemplate}
/// {@macro pulumi_network_get_route_table_args_doc}
class GetRouteTableArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the route table.
  final pulumi.Input<String> routeTableName;

  /// Creates a new [GetRouteTableArgs].
  /// [expand] Expands referenced resources.
  /// [resourceGroupName] The name of the resource group.
  /// [routeTableName] The name of the route table.
  GetRouteTableArgs({
    this.expand,
    required this.resourceGroupName,
    required this.routeTableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'routeTableName': routeTableName,
    };
  }

  factory GetRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteTableArgs(
      expand: map['expand'] == null ? null : (map['expand'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routeTableName: (map['routeTableName'] as String).input(),
    );
  }
}

