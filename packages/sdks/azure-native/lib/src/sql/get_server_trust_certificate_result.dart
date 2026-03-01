// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerTrustCertificate.
class GetServerTrustCertificateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The certificate name
  final String certificateName;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// The certificate public blob
  final String? publicBlob;
  /// The certificate thumbprint
  final String thumbprint;
  /// Resource type.
  final String type;

  /// Creates a new [GetServerTrustCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certificateName] The certificate name
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [publicBlob] The certificate public blob
  /// [thumbprint] The certificate thumbprint
  /// [type] Resource type.
  GetServerTrustCertificateResult({
    required this.azureApiVersion,
    required this.certificateName,
    required this.id,
    required this.name,
    this.publicBlob,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'certificateName': certificateName,
      'id': id,
      'name': name,
      'publicBlob': ?publicBlob,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory GetServerTrustCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetServerTrustCertificateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      certificateName: map['certificateName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      publicBlob: map['publicBlob'] == null ? null : map['publicBlob'] as String,
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
    );
  }
}

