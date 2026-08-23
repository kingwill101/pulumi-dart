// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_hub_connection_routing.dart';

/// Result data returned by getVirtualHubConnection.
class GetVirtualHubConnectionResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Whether Internet Security is enabled to secure internet traffic on this connection
  final bool internetSecurityEnabled;
  /// The name which is used for this Static Route.
  final String name;
  /// The ID of the Virtual Network which the Virtual Hub is connected
  final String remoteVirtualNetworkId;
  final String resourceGroupName;
  /// A `routing` block as defined below.
  final List<GetVirtualHubConnectionRouting> routings;
  /// The ID of the Virtual Hub within which this connection is created
  final String virtualHubId;
  final String virtualHubName;

  /// Creates a new [GetVirtualHubConnectionResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internetSecurityEnabled] Whether Internet Security is enabled to secure internet traffic on this connection
  /// [name] The name which is used for this Static Route.
  /// [remoteVirtualNetworkId] The ID of the Virtual Network which the Virtual Hub is connected
  /// [resourceGroupName] Required.
  /// [routings] A `routing` block as defined below.
  /// [virtualHubId] The ID of the Virtual Hub within which this connection is created
  /// [virtualHubName] Required.
  const GetVirtualHubConnectionResult({
    required this.id,
    required this.internetSecurityEnabled,
    required this.name,
    required this.remoteVirtualNetworkId,
    required this.resourceGroupName,
    required this.routings,
    required this.virtualHubId,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'internetSecurityEnabled': internetSecurityEnabled,
      'name': name,
      'remoteVirtualNetworkId': remoteVirtualNetworkId,
      'resourceGroupName': resourceGroupName,
      'routings': pulumi.Input.encodeList<GetVirtualHubConnectionRouting, Map<String, dynamic>>(routings, (value) => value.toMap()),
      'virtualHubId': virtualHubId,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetVirtualHubConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubConnectionResult(
      id: map['id'] as String,
      internetSecurityEnabled: map['internetSecurityEnabled'] as bool,
      name: map['name'] as String,
      remoteVirtualNetworkId: map['remoteVirtualNetworkId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routings: pulumi.Input.decodeList<GetVirtualHubConnectionRouting>(map['routings']!, (value) => GetVirtualHubConnectionRouting.fromMap((value as Map).cast<String, dynamic>())),
      virtualHubId: map['virtualHubId'] as String,
      virtualHubName: map['virtualHubName'] as String,
    );
  }
}
