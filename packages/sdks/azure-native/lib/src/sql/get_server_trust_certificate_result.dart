// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerTrustCertificate.
class GetServerTrustCertificateResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The certificate name
  final String? certificateName;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// The certificate public blob
  final String? publicBlob;
  /// The certificate thumbprint
  final String? thumbprint;
  /// Resource type.
  final String? type;

  /// Creates a new [GetServerTrustCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certificateName] The certificate name
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [publicBlob] The certificate public blob
  /// [thumbprint] The certificate thumbprint
  /// [type] Resource type.
  const GetServerTrustCertificateResult({
    this.azureApiVersion,
    this.certificateName,
    this.id,
    this.name,
    this.publicBlob,
    this.thumbprint,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'certificateName': ?certificateName,
      'id': ?id,
      'name': ?name,
      'publicBlob': ?publicBlob,
      'thumbprint': ?thumbprint,
      'type': ?type,
    };
  }

  factory GetServerTrustCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetServerTrustCertificateResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateName: (() { final guardedValue = map['certificateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicBlob: (() { final guardedValue = map['publicBlob']; if (guardedValue == null) return null; return guardedValue as String; })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
