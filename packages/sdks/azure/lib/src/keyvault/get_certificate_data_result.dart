// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificateData.
class GetCertificateDataResult {
  /// Amount of certificates in the chain in case Key Vault Certificate is a bundle (e.g. has an intermediate certificate).
  final int? certificatesCount;
  /// Expiry date of certificate in RFC3339 format.
  final String? expires;
  /// The raw Key Vault Certificate data represented as a hexadecimal string.
  final String? hex;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Key Vault Certificate Key.
  final String? key;
  final String? keyVaultId;
  final String? name;
  /// Not Before date of certificate in RFC3339 format.
  final String? notBefore;
  /// The Key Vault Certificate in PEM format.
  final String? pem;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  final String? version;

  /// Creates a new [GetCertificateDataResult].
  /// [certificatesCount] Amount of certificates in the chain in case Key Vault Certificate is a bundle (e.g. has an intermediate certificate).
  /// [expires] Expiry date of certificate in RFC3339 format.
  /// [hex] The raw Key Vault Certificate data represented as a hexadecimal string.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [key] The Key Vault Certificate Key.
  /// [keyVaultId] Optional.
  /// [name] Optional.
  /// [notBefore] Not Before date of certificate in RFC3339 format.
  /// [pem] The Key Vault Certificate in PEM format.
  /// [tags] A mapping of tags to assign to the resource.
  /// [version] Optional.
  const GetCertificateDataResult({
    this.certificatesCount,
    this.expires,
    this.hex,
    this.id,
    this.key,
    this.keyVaultId,
    this.name,
    this.notBefore,
    this.pem,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatesCount': ?certificatesCount,
      'expires': ?expires,
      'hex': ?hex,
      'id': ?id,
      'key': ?key,
      'keyVaultId': ?keyVaultId,
      'name': ?name,
      'notBefore': ?notBefore,
      'pem': ?pem,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory GetCertificateDataResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateDataResult(
      certificatesCount: (() { final guardedValue = map['certificatesCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hex: (() { final guardedValue = map['hex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pem: (() { final guardedValue = map['pem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
