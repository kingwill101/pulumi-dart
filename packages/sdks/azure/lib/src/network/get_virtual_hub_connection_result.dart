// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_hub_connection_routing.dart';

/// Result data returned by getVirtualHubConnection.
class GetVirtualHubConnectionResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Whether Internet Security is enabled to secure internet traffic on this connection
  final bool? internetSecurityEnabled;
  /// The name which is used for this Static Route.
  final String? name;
  /// The ID of the Virtual Network which the Virtual Hub is connected
  final String? remoteVirtualNetworkId;
  final String? resourceGroupName;
  /// A `routing` block as defined below.
  final List<GetVirtualHubConnectionRouting>? routings;
  /// The ID of the Virtual Hub within which this connection is created
  final String? virtualHubId;
  final String? virtualHubName;

  /// Creates a new [GetVirtualHubConnectionResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internetSecurityEnabled] Whether Internet Security is enabled to secure internet traffic on this connection
  /// [name] The name which is used for this Static Route.
  /// [remoteVirtualNetworkId] The ID of the Virtual Network which the Virtual Hub is connected
  /// [resourceGroupName] Optional.
  /// [routings] A `routing` block as defined below.
  /// [virtualHubId] The ID of the Virtual Hub within which this connection is created
  /// [virtualHubName] Optional.
  const GetVirtualHubConnectionResult({
    this.id,
    this.internetSecurityEnabled,
    this.name,
    this.remoteVirtualNetworkId,
    this.resourceGroupName,
    this.routings,
    this.virtualHubId,
    this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'internetSecurityEnabled': ?internetSecurityEnabled,
      'name': ?name,
      'remoteVirtualNetworkId': ?remoteVirtualNetworkId,
      'resourceGroupName': ?resourceGroupName,
      'routings': ?(() { final guardedValue = routings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualHubConnectionRouting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'virtualHubId': ?virtualHubId,
      'virtualHubName': ?virtualHubName,
    };
  }

  factory GetVirtualHubConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubConnectionResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internetSecurityEnabled: (() { final guardedValue = map['internetSecurityEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remoteVirtualNetworkId: (() { final guardedValue = map['remoteVirtualNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routings: (() { final guardedValue = map['routings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualHubConnectionRouting>(guardedValue, (value) => GetVirtualHubConnectionRouting.fromMap((value as Map).cast<String, dynamic>())); })(),
      virtualHubId: (() { final guardedValue = map['virtualHubId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualHubName: (() { final guardedValue = map['virtualHubName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
