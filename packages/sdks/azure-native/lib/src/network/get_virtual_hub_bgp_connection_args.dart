// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_hub_bgp_connection_args_doc}
/// Arguments for getVirtualHubBgpConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_hub_bgp_connection_args_doc}
class GetVirtualHubBgpConnectionArgs {
  /// The name of the connection.
  final pulumi.Input<String> connectionName;

  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [GetVirtualHubBgpConnectionArgs].
  /// [connectionName] The name of the connection.
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [virtualHubName] The name of the VirtualHub.
  GetVirtualHubBgpConnectionArgs({
    required this.connectionName,
    required this.resourceGroupName,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'resourceGroupName': resourceGroupName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetVirtualHubBgpConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubBgpConnectionArgs(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      virtualHubName: pulumi.Input.fromValue(map['virtualHubName'] as String),
    );
  }
}
