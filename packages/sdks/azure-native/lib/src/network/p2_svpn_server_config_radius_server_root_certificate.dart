// ignore_for_file: unused_element, unnecessary_cast


/// Radius Server root certificate of P2SVpnServerConfiguration.
class P2SVpnServerConfigRadiusServerRootCertificate {
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The certificate public data.
  final String publicCertData;

  /// Creates a new [P2SVpnServerConfigRadiusServerRootCertificate].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [publicCertData] The certificate public data.
  P2SVpnServerConfigRadiusServerRootCertificate({
    this.etag,
    this.id,
    this.name,
    required this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'publicCertData': publicCertData,
    };
  }

  factory P2SVpnServerConfigRadiusServerRootCertificate.fromMap(Map<String, dynamic> map) {
    return P2SVpnServerConfigRadiusServerRootCertificate(
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      publicCertData: map['publicCertData'] as String,
    );
  }
}

