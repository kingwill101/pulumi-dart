// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_certificate_policy.dart';

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The raw Key Vault Certificate data represented as a hexadecimal string.
  final String certificateData;
  /// The raw Key Vault Certificate data represented as a base64 string.
  final String certificateDataBase64;
  /// A `certificatePolicy` block as defined below.
  final List<GetCertificateCertificatePolicy> certificatePolicies;
  /// Expiry date of certificate in RFC3339 format.
  final String expires;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyVaultId;
  /// The name of the Certificate Issuer.
  final String name;
  /// Not Before date of certificate in RFC3339 format.
  final String notBefore;
  /// The (Versioned) ID for this Key Vault Certificate. This property points to a specific version of a Key Vault Certificate, as such using this won't auto-rotate values if used in other Azure Services.
  final String resourceManagerId;
  /// The Versionless ID of the Key Vault Certificate. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Certificate is updated.
  final String resourceManagerVersionlessId;
  /// The ID of the associated Key Vault Secret.
  final String secretId;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The X509 Thumbprint of the Key Vault Certificate represented as a hexadecimal string.
  final String thumbprint;
  /// The current version of the Key Vault Certificate.
  final String version;
  /// The Base ID of the Key Vault Certificate.
  final String versionlessId;
  /// The Base ID of the Key Vault Secret.
  final String versionlessSecretId;

  /// Creates a new [GetCertificateResult].
  /// [certificateData] The raw Key Vault Certificate data represented as a hexadecimal string.
  /// [certificateDataBase64] The raw Key Vault Certificate data represented as a base64 string.
  /// [certificatePolicies] A `certificatePolicy` block as defined below.
  /// [expires] Expiry date of certificate in RFC3339 format.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultId] Required.
  /// [name] The name of the Certificate Issuer.
  /// [notBefore] Not Before date of certificate in RFC3339 format.
  /// [resourceManagerId] The (Versioned) ID for this Key Vault Certificate. This property points to a specific version of a Key Vault Certificate, as such using this won't auto-rotate values if used in other Azure Services.
  /// [resourceManagerVersionlessId] The Versionless ID of the Key Vault Certificate. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Certificate is updated.
  /// [secretId] The ID of the associated Key Vault Secret.
  /// [tags] A mapping of tags to assign to the resource.
  /// [thumbprint] The X509 Thumbprint of the Key Vault Certificate represented as a hexadecimal string.
  /// [version] The current version of the Key Vault Certificate.
  /// [versionlessId] The Base ID of the Key Vault Certificate.
  /// [versionlessSecretId] The Base ID of the Key Vault Secret.
  const GetCertificateResult({
    required this.certificateData,
    required this.certificateDataBase64,
    required this.certificatePolicies,
    required this.expires,
    required this.id,
    required this.keyVaultId,
    required this.name,
    required this.notBefore,
    required this.resourceManagerId,
    required this.resourceManagerVersionlessId,
    required this.secretId,
    required this.tags,
    required this.thumbprint,
    required this.version,
    required this.versionlessId,
    required this.versionlessSecretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateData': certificateData,
      'certificateDataBase64': certificateDataBase64,
      'certificatePolicies': pulumi.Input.encodeList<GetCertificateCertificatePolicy, Map<String, dynamic>>(certificatePolicies, (value) => value.toMap()),
      'expires': expires,
      'id': id,
      'keyVaultId': keyVaultId,
      'name': name,
      'notBefore': notBefore,
      'resourceManagerId': resourceManagerId,
      'resourceManagerVersionlessId': resourceManagerVersionlessId,
      'secretId': secretId,
      'tags': tags,
      'thumbprint': thumbprint,
      'version': version,
      'versionlessId': versionlessId,
      'versionlessSecretId': versionlessSecretId,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificateData: map['certificateData'] as String,
      certificateDataBase64: map['certificateDataBase64'] as String,
      certificatePolicies: pulumi.Input.decodeList<GetCertificateCertificatePolicy>(map['certificatePolicies']!, (value) => GetCertificateCertificatePolicy.fromMap((value as Map).cast<String, dynamic>())),
      expires: map['expires'] as String,
      id: map['id'] as String,
      keyVaultId: map['keyVaultId'] as String,
      name: map['name'] as String,
      notBefore: map['notBefore'] as String,
      resourceManagerId: map['resourceManagerId'] as String,
      resourceManagerVersionlessId: map['resourceManagerVersionlessId'] as String,
      secretId: map['secretId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      thumbprint: map['thumbprint'] as String,
      version: map['version'] as String,
      versionlessId: map['versionlessId'] as String,
      versionlessSecretId: map['versionlessSecretId'] as String,
    );
  }
}
