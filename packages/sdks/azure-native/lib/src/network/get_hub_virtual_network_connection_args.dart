// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_hub_virtual_network_connection_args_doc}
/// Arguments for getHubVirtualNetworkConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_hub_virtual_network_connection_args_doc}
class GetHubVirtualNetworkConnectionArgs {
  /// The name of the vpn connection.
  final pulumi.Input<String> connectionName;
  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [GetHubVirtualNetworkConnectionArgs].
  /// [connectionName] The name of the vpn connection.
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [virtualHubName] The name of the VirtualHub.
  const GetHubVirtualNetworkConnectionArgs({
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

  factory GetHubVirtualNetworkConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetHubVirtualNetworkConnectionArgs(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualHubName: pulumi.Input.fromValue(map['virtualHubName'] as String),
    );
  }
}

