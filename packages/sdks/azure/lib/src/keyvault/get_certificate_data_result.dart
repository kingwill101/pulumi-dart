// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificateData.
class GetCertificateDataResult {
  /// Amount of certificates in the chain in case Key Vault Certificate is a bundle (e.g. has an intermediate certificate).
  final int certificatesCount;
  /// Expiry date of certificate in RFC3339 format.
  final String expires;
  /// The raw Key Vault Certificate data represented as a hexadecimal string.
  final String hex;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Key Vault Certificate Key.
  final String key;
  final String keyVaultId;
  final String name;
  /// Not Before date of certificate in RFC3339 format.
  final String notBefore;
  /// The Key Vault Certificate in PEM format.
  final String pem;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  final String version;

  /// Creates a new [GetCertificateDataResult].
  /// [certificatesCount] Amount of certificates in the chain in case Key Vault Certificate is a bundle (e.g. has an intermediate certificate).
  /// [expires] Expiry date of certificate in RFC3339 format.
  /// [hex] The raw Key Vault Certificate data represented as a hexadecimal string.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [key] The Key Vault Certificate Key.
  /// [keyVaultId] Required.
  /// [name] Required.
  /// [notBefore] Not Before date of certificate in RFC3339 format.
  /// [pem] The Key Vault Certificate in PEM format.
  /// [tags] A mapping of tags to assign to the resource.
  /// [version] Required.
  const GetCertificateDataResult({
    required this.certificatesCount,
    required this.expires,
    required this.hex,
    required this.id,
    required this.key,
    required this.keyVaultId,
    required this.name,
    required this.notBefore,
    required this.pem,
    required this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatesCount': certificatesCount,
      'expires': expires,
      'hex': hex,
      'id': id,
      'key': key,
      'keyVaultId': keyVaultId,
      'name': name,
      'notBefore': notBefore,
      'pem': pem,
      'tags': tags,
      'version': version,
    };
  }

  factory GetCertificateDataResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateDataResult(
      certificatesCount: map['certificatesCount'] as int,
      expires: map['expires'] as String,
      hex: map['hex'] as String,
      id: map['id'] as String,
      key: map['key'] as String,
      keyVaultId: map['keyVaultId'] as String,
      name: map['name'] as String,
      notBefore: map['notBefore'] as String,
      pem: map['pem'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
    );
  }
}
