// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualRouterPeering.
class GetVirtualRouterPeeringResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the virtual router peering that is unique within a virtual router.
  final String? name;
  /// Peer ASN.
  final double? peerAsn;
  /// Peer IP.
  final String? peerIp;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Peering type.
  final String type;

  /// Creates a new [GetVirtualRouterPeeringResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the virtual router peering that is unique within a virtual router.
  /// [peerAsn] Peer ASN.
  /// [peerIp] Peer IP.
  /// [provisioningState] The provisioning state of the resource.
  /// [type] Peering type.
  const GetVirtualRouterPeeringResult({
    required this.azureApiVersion,
    required this.etag,
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
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'peerAsn': ?peerAsn,
      'peerIp': ?peerIp,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetVirtualRouterPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualRouterPeeringResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return guardedValue as double; })(),
      peerIp: (() { final guardedValue = map['peerIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

