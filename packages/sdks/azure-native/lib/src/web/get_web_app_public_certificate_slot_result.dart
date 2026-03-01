// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppPublicCertificateSlot.
class GetWebAppPublicCertificateSlotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Public Certificate byte array
  final String? blob;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// Public Certificate Location
  final String? publicCertificateLocation;
  /// Certificate Thumbprint
  final String thumbprint;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppPublicCertificateSlotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [blob] Public Certificate byte array
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [publicCertificateLocation] Public Certificate Location
  /// [thumbprint] Certificate Thumbprint
  /// [type] Resource type.
  GetWebAppPublicCertificateSlotResult({
    required this.azureApiVersion,
    this.blob,
    required this.id,
    this.kind,
    required this.name,
    this.publicCertificateLocation,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'blob': ?blob,
      'id': id,
      'kind': ?kind,
      'name': name,
      'publicCertificateLocation': ?publicCertificateLocation,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory GetWebAppPublicCertificateSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppPublicCertificateSlotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      blob: map['blob'] == null ? null : map['blob'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      publicCertificateLocation: map['publicCertificateLocation'] == null ? null : map['publicCertificateLocation'] as String,
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
    );
  }
}

