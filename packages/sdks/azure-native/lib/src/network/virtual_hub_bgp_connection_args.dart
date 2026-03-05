// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// {@template pulumi_network_virtual_hub_bgp_connection_args_doc}
/// The set of arguments for VirtualHubBgpConnection.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_hub_bgp_connection_args_doc}
class VirtualHubBgpConnectionArgs {
  /// The name of the connection.
  final pulumi.Input<String>? connectionName;
  /// The reference to the HubVirtualNetworkConnection resource.
  final pulumi.Input<SubResource>? hubVirtualNetworkConnection;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the connection.
  final pulumi.Input<String>? name;
  /// Peer ASN.
  final pulumi.Input<double>? peerAsn;
  /// Peer IP.
  final pulumi.Input<String>? peerIp;
  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [VirtualHubBgpConnectionArgs].
  /// [connectionName] The name of the connection.
  /// [hubVirtualNetworkConnection] The reference to the HubVirtualNetworkConnection resource.
  /// [id] Resource ID.
  /// [name] Name of the connection.
  /// [peerAsn] Peer ASN.
  /// [peerIp] Peer IP.
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [virtualHubName] The name of the VirtualHub.
  VirtualHubBgpConnectionArgs({
    this.connectionName,
    this.hubVirtualNetworkConnection,
    this.id,
    this.name,
    this.peerAsn,
    this.peerIp,
    required this.resourceGroupName,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'hubVirtualNetworkConnection': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(hubVirtualNetworkConnection, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
      'peerAsn': ?peerAsn,
      'peerIp': ?peerIp,
      'resourceGroupName': resourceGroupName,
      'virtualHubName': virtualHubName,
    };
  }

  factory VirtualHubBgpConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VirtualHubBgpConnectionArgs(
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubVirtualNetworkConnection: (() { final guardedValue = map['hubVirtualNetworkConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      peerIp: (() { final guardedValue = map['peerIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualHubName: pulumi.Input.fromValue(map['virtualHubName'] as String),
    );
  }
}

