// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_hub_route_table_get_virtual_hub_route_table_args_doc}
/// Arguments for getVirtualHubRouteTable.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_hub_route_table_get_virtual_hub_route_table_args_doc}
class GetVirtualHubRouteTableArgs {
  /// The name of the Virtual Hub Route Table.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the Virtual Hub Route Table exists.
  final pulumi.Input<String> resourceGroupName;
  /// The name which should be used for Virtual Hub Route Table.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [GetVirtualHubRouteTableArgs].
  /// [name] The name of the Virtual Hub Route Table.
  /// [resourceGroupName] The Name of the Resource Group where the Virtual Hub Route Table exists.
  /// [virtualHubName] The name which should be used for Virtual Hub Route Table.
  GetVirtualHubRouteTableArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualHubName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetVirtualHubRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubRouteTableArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualHubName: pulumi.Output.create<String>(map['virtualHubName'] as String),
    );
  }
}

