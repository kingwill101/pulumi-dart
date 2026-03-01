// ignore_for_file: unused_element, unnecessary_cast


/// VPN client revoked certificate of virtual network gateway.
class VpnClientRevokedCertificate {
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The revoked VPN client certificate thumbprint.
  final String? thumbprint;

  /// Creates a new [VpnClientRevokedCertificate].
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [thumbprint] The revoked VPN client certificate thumbprint.
  VpnClientRevokedCertificate({
    this.id,
    this.name,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'thumbprint': ?thumbprint,
    };
  }

  factory VpnClientRevokedCertificate.fromMap(Map<String, dynamic> map) {
    return VpnClientRevokedCertificate(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

