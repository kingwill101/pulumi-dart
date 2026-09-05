// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  final String? accountName;
  /// The format of the certificate, such as `Cer` or `Pfx`.
  final String? format;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The public key of the certificate.
  final String? publicData;
  final String? resourceGroupName;
  /// The thumbprint of the certificate.
  final String? thumbprint;
  /// The algorithm of the certificate thumbprint.
  final String? thumbprintAlgorithm;

  /// Creates a new [GetCertificateResult].
  /// [accountName] Optional.
  /// [format] The format of the certificate, such as `Cer` or `Pfx`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [publicData] The public key of the certificate.
  /// [resourceGroupName] Optional.
  /// [thumbprint] The thumbprint of the certificate.
  /// [thumbprintAlgorithm] The algorithm of the certificate thumbprint.
  const GetCertificateResult({
    this.accountName,
    this.format,
    this.id,
    this.name,
    this.publicData,
    this.resourceGroupName,
    this.thumbprint,
    this.thumbprintAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'format': ?format,
      'id': ?id,
      'name': ?name,
      'publicData': ?publicData,
      'resourceGroupName': ?resourceGroupName,
      'thumbprint': ?thumbprint,
      'thumbprintAlgorithm': ?thumbprintAlgorithm,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicData: (() { final guardedValue = map['publicData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      thumbprintAlgorithm: (() { final guardedValue = map['thumbprintAlgorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
