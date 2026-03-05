// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_hub_get_virtual_hub_args_doc}
/// Arguments for getVirtualHub.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_hub_get_virtual_hub_args_doc}
class GetVirtualHubArgs {
  /// The name of the Virtual Hub.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the Virtual Hub exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVirtualHubArgs].
  /// [name] The name of the Virtual Hub.
  /// [resourceGroupName] The Name of the Resource Group where the Virtual Hub exists.
  GetVirtualHubArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVirtualHubArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

