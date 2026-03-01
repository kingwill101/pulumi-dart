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
    pulumi.Output<String>? expand,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> routeTableName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeTableName = pulumi.Input.asInput<String>(routeTableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'routeTableName': routeTableName,
    };
  }

  factory GetRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteTableArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routeTableName: pulumi.Output.create<String>(map['routeTableName'] as String),
    );
  }
}

