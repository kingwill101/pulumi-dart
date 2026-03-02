// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_route_table_get_route_table_args_doc}
/// Arguments for getRouteTable.
/// {@endtemplate}
/// {@macro pulumi_network_get_route_table_get_route_table_args_doc}
class GetRouteTableArgs {
  /// The name of the Route Table.
  final pulumi.Input<String> name;
  /// The name of the Resource Group in which the Route Table exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRouteTableArgs].
  /// [name] The name of the Route Table.
  /// [resourceGroupName] The name of the Resource Group in which the Route Table exists.
  GetRouteTableArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteTableArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

