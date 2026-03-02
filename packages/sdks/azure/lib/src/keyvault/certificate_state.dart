// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate.dart';
import 'certificate_certificate_attribute.dart';
import 'certificate_certificate_policy.dart';

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// A `certificate` block as defined below, used to Import an existing certificate. Changing this will create a new version of the Key Vault Certificate.
  final pulumi.Input<CertificateCertificate>? certificate;
  /// A `certificate_attribute` block as defined below.
  final pulumi.Input<List<CertificateCertificateAttribute>>? certificateAttributes;
  /// The raw Key Vault Certificate data represented as a hexadecimal string.
  final pulumi.Input<String>? certificateData;
  /// The Base64 encoded Key Vault Certificate data.
  final pulumi.Input<String>? certificateDataBase64;
  /// A `certificate_policy` block as defined below. Changing this (except the `lifetime_action` field) will create a new version of the Key Vault Certificate.
  ///
  /// > **NOTE:** When creating a Key Vault Certificate, at least one of `certificate` or `certificate_policy` is required. Provide `certificate` to import an existing certificate, `certificate_policy` to generate a new certificate.
  final pulumi.Input<CertificateCertificatePolicy>? certificatePolicy;
  /// The ID of the Key Vault where the Certificate should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? keyVaultId;
  /// Specifies the name of the Key Vault Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The (Versioned) ID for this Key Vault Certificate. This property points to a specific version of a Key Vault Certificate, as such using this won't auto-rotate values if used in other Azure Services.
  final pulumi.Input<String>? resourceManagerId;
  /// The Versionless ID of the Key Vault Certificate. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Certificate is updated.
  final pulumi.Input<String>? resourceManagerVersionlessId;
  /// The ID of the associated Key Vault Secret.
  final pulumi.Input<String>? secretId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The X509 Thumbprint of the Key Vault Certificate represented as a hexadecimal string.
  final pulumi.Input<String>? thumbprint;
  /// The current version of the Key Vault Certificate.
  final pulumi.Input<String>? version;
  /// The Base ID of the Key Vault Certificate.
  final pulumi.Input<String>? versionlessId;
  /// The Base ID of the Key Vault Secret.
  final pulumi.Input<String>? versionlessSecretId;

  /// Creates a new [CertificateState].
  /// [certificate] A `certificate` block as defined below, used to Import an existing certificate. Changing this will create a new version of the Key Vault Certificate.
  /// [certificateAttributes] A `certificate_attribute` block as defined below.
  /// [certificateData] The raw Key Vault Certificate data represented as a hexadecimal string.
  /// [certificateDataBase64] The Base64 encoded Key Vault Certificate data.
  /// [certificatePolicy] A `certificate_policy` block as defined below. Changing this (except the `lifetime_action` field) will create a new version of the Key Vault Certificate.
  /// [keyVaultId] The ID of the Key Vault where the Certificate should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Key Vault Certificate. Changing this forces a new resource to be created.
  /// [resourceManagerId] The (Versioned) ID for this Key Vault Certificate. This property points to a specific version of a Key Vault Certificate, as such using this won't auto-rotate values if used in other Azure Services.
  /// [resourceManagerVersionlessId] The Versionless ID of the Key Vault Certificate. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Certificate is updated.
  /// [secretId] The ID of the associated Key Vault Secret.
  /// [tags] A mapping of tags to assign to the resource.
  /// [thumbprint] The X509 Thumbprint of the Key Vault Certificate represented as a hexadecimal string.
  /// [version] The current version of the Key Vault Certificate.
  /// [versionlessId] The Base ID of the Key Vault Certificate.
  /// [versionlessSecretId] The Base ID of the Key Vault Secret.
  CertificateState({
    this.certificate,
    this.certificateAttributes,
    this.certificateData,
    this.certificateDataBase64,
    this.certificatePolicy,
    this.keyVaultId,
    this.name,
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
      'certificate': ?pulumi.Input.mapOptionalInputValue<CertificateCertificate, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'certificateAttributes': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateAttribute>, List<Map<String, dynamic>>>(certificateAttributes, (value) => pulumi.Input.encodeList<CertificateCertificateAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificateData': ?certificateData,
      'certificateDataBase64': ?certificateDataBase64,
      'certificatePolicy': ?pulumi.Input.mapOptionalInputValue<CertificateCertificatePolicy, Map<String, dynamic>>(certificatePolicy, (value) => value.toMap()),
      'keyVaultId': ?keyVaultId,
      'name': ?name,
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

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      certificate: map['certificate'] == null ? null : (CertificateCertificate.fromMap((map['certificate'] as Map).cast<String, dynamic>())).input(),
      certificateAttributes: map['certificateAttributes'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateAttribute>(map['certificateAttributes'], (value) => CertificateCertificateAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      certificateData: map['certificateData'] == null ? null : (map['certificateData'] as String).input(),
      certificateDataBase64: map['certificateDataBase64'] == null ? null : (map['certificateDataBase64'] as String).input(),
      certificatePolicy: map['certificatePolicy'] == null ? null : (CertificateCertificatePolicy.fromMap((map['certificatePolicy'] as Map).cast<String, dynamic>())).input(),
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceManagerId: map['resourceManagerId'] == null ? null : (map['resourceManagerId'] as String).input(),
      resourceManagerVersionlessId: map['resourceManagerVersionlessId'] == null ? null : (map['resourceManagerVersionlessId'] as String).input(),
      secretId: map['secretId'] == null ? null : (map['secretId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      versionlessId: map['versionlessId'] == null ? null : (map['versionlessId'] as String).input(),
      versionlessSecretId: map['versionlessSecretId'] == null ? null : (map['versionlessSecretId'] as String).input(),
    );
  }
}

