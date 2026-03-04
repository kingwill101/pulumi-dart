// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_hub_connection_get_virtual_hub_connection_args_doc}
/// Arguments for getVirtualHubConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_hub_connection_get_virtual_hub_connection_args_doc}
class GetVirtualHubConnectionArgs {
  /// The name of the Connection which should be retrieved.
  final pulumi.Input<String> name;

  /// The Name of the Resource Group where the Virtual Hub Connection exists.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Virtual Hub where this Connection exists.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [GetVirtualHubConnectionArgs].
  /// [name] The name of the Connection which should be retrieved.
  /// [resourceGroupName] The Name of the Resource Group where the Virtual Hub Connection exists.
  /// [virtualHubName] The name of the Virtual Hub where this Connection exists.
  GetVirtualHubConnectionArgs({
    required this.name,
    required this.resourceGroupName,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetVirtualHubConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubConnectionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      virtualHubName: pulumi.Input.fromValue(map['virtualHubName'] as String),
    );
  }
}
