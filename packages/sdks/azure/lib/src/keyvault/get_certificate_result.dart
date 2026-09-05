// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_certificate_policy.dart';

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The raw Key Vault Certificate data represented as a hexadecimal string.
  final String? certificateData;
  /// The raw Key Vault Certificate data represented as a base64 string.
  final String? certificateDataBase64;
  /// A `certificatePolicy` block as defined below.
  final List<GetCertificateCertificatePolicy>? certificatePolicies;
  /// Expiry date of certificate in RFC3339 format.
  final String? expires;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? keyVaultId;
  /// The name of the Certificate Issuer.
  final String? name;
  /// Not Before date of certificate in RFC3339 format.
  final String? notBefore;
  /// The (Versioned) ID for this Key Vault Certificate. This property points to a specific version of a Key Vault Certificate, as such using this won't auto-rotate values if used in other Azure Services.
  final String? resourceManagerId;
  /// The Versionless ID of the Key Vault Certificate. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Certificate is updated.
  final String? resourceManagerVersionlessId;
  /// The ID of the associated Key Vault Secret.
  final String? secretId;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// The X509 Thumbprint of the Key Vault Certificate represented as a hexadecimal string.
  final String? thumbprint;
  /// The current version of the Key Vault Certificate.
  final String? version;
  /// The Base ID of the Key Vault Certificate.
  final String? versionlessId;
  /// The Base ID of the Key Vault Secret.
  final String? versionlessSecretId;

  /// Creates a new [GetCertificateResult].
  /// [certificateData] The raw Key Vault Certificate data represented as a hexadecimal string.
  /// [certificateDataBase64] The raw Key Vault Certificate data represented as a base64 string.
  /// [certificatePolicies] A `certificatePolicy` block as defined below.
  /// [expires] Expiry date of certificate in RFC3339 format.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultId] Optional.
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
    this.certificateData,
    this.certificateDataBase64,
    this.certificatePolicies,
    this.expires,
    this.id,
    this.keyVaultId,
    this.name,
    this.notBefore,
    this.resourceManagerId,
    this.resourceManagerVersionlessId,
    this.secretId,
    this.tags,
    this.thumbprint,
    this.version,
    this.versionlessId,
    this.versionlessSecretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateData': ?certificateData,
      'certificateDataBase64': ?certificateDataBase64,
      'certificatePolicies': ?(() { final guardedValue = certificatePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCertificateCertificatePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'expires': ?expires,
      'id': ?id,
      'keyVaultId': ?keyVaultId,
      'name': ?name,
      'notBefore': ?notBefore,
      'resourceManagerId': ?resourceManagerId,
      'resourceManagerVersionlessId': ?resourceManagerVersionlessId,
      'secretId': ?secretId,
      'tags': ?tags,
      'thumbprint': ?thumbprint,
      'version': ?version,
      'versionlessId': ?versionlessId,
      'versionlessSecretId': ?versionlessSecretId,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificateData: (() { final guardedValue = map['certificateData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateDataBase64: (() { final guardedValue = map['certificateDataBase64']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificatePolicies: (() { final guardedValue = map['certificatePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCertificateCertificatePolicy>(guardedValue, (value) => GetCertificateCertificatePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceManagerId: (() { final guardedValue = map['resourceManagerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceManagerVersionlessId: (() { final guardedValue = map['resourceManagerVersionlessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionlessId: (() { final guardedValue = map['versionlessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionlessSecretId: (() { final guardedValue = map['versionlessSecretId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
