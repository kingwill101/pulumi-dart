// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Result data returned by getVirtualHubBgpConnection.
class GetVirtualHubBgpConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The current state of the VirtualHub to Peer.
  final String connectionState;

  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;

  /// The reference to the HubVirtualNetworkConnection resource.
  final SubResourceResponse? hubVirtualNetworkConnection;

  /// Resource ID.
  final String? id;

  /// Name of the connection.
  final String? name;

  /// Peer ASN.
  final double? peerAsn;

  /// Peer IP.
  final String? peerIp;

  /// The provisioning state of the resource.
  final String provisioningState;

  /// Connection type.
  final String type;

  /// Creates a new [GetVirtualHubBgpConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionState] The current state of the VirtualHub to Peer.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [hubVirtualNetworkConnection] The reference to the HubVirtualNetworkConnection resource.
  /// [id] Resource ID.
  /// [name] Name of the connection.
  /// [peerAsn] Peer ASN.
  /// [peerIp] Peer IP.
  /// [provisioningState] The provisioning state of the resource.
  /// [type] Connection type.
  GetVirtualHubBgpConnectionResult({
    required this.azureApiVersion,
    required this.connectionState,
    required this.etag,
    this.hubVirtualNetworkConnection,
    this.id,
    this.name,
    this.peerAsn,
    this.peerIp,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'connectionState': connectionState,
      'etag': etag,
      'hubVirtualNetworkConnection': ?hubVirtualNetworkConnection?.toMap(),
      'id': ?id,
      'name': ?name,
      'peerAsn': ?peerAsn,
      'peerIp': ?peerIp,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetVirtualHubBgpConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubBgpConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectionState: map['connectionState'] as String,
      etag: map['etag'] as String,
      hubVirtualNetworkConnection: (() {
        final guardedValue = map['hubVirtualNetworkConnection'];
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      peerAsn: (() {
        final guardedValue = map['peerAsn'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      peerIp: (() {
        final guardedValue = map['peerIp'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}
