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
    pulumi.Output<CertificateCertificate>? certificate,
    pulumi.Output<List<CertificateCertificateAttribute>>? certificateAttributes,
    pulumi.Output<String>? certificateData,
    pulumi.Output<String>? certificateDataBase64,
    pulumi.Output<CertificateCertificatePolicy>? certificatePolicy,
    pulumi.Output<String>? keyVaultId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceManagerId,
    pulumi.Output<String>? resourceManagerVersionlessId,
    pulumi.Output<String>? secretId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? thumbprint,
    pulumi.Output<String>? version,
    pulumi.Output<String>? versionlessId,
    pulumi.Output<String>? versionlessSecretId,
  }) :
      certificate = pulumi.Input.asOptionalInput<CertificateCertificate>(certificate),
      certificateAttributes = pulumi.Input.asOptionalInput<List<CertificateCertificateAttribute>>(certificateAttributes),
      certificateData = pulumi.Input.asOptionalInput<String>(certificateData),
      certificateDataBase64 = pulumi.Input.asOptionalInput<String>(certificateDataBase64),
      certificatePolicy = pulumi.Input.asOptionalInput<CertificateCertificatePolicy>(certificatePolicy),
      keyVaultId = pulumi.Input.asOptionalInput<String>(keyVaultId),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceManagerId = pulumi.Input.asOptionalInput<String>(resourceManagerId),
      resourceManagerVersionlessId = pulumi.Input.asOptionalInput<String>(resourceManagerVersionlessId),
      secretId = pulumi.Input.asOptionalInput<String>(secretId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint),
      version = pulumi.Input.asOptionalInput<String>(version),
      versionlessId = pulumi.Input.asOptionalInput<String>(versionlessId),
      versionlessSecretId = pulumi.Input.asOptionalInput<String>(versionlessSecretId);

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
      certificate: map['certificate'] == null ? null : pulumi.Output.create<CertificateCertificate>(CertificateCertificate.fromMap((map['certificate'] as Map).cast<String, dynamic>())),
      certificateAttributes: map['certificateAttributes'] == null ? null : pulumi.Output.create<List<CertificateCertificateAttribute>>(pulumi.Input.decodeList<CertificateCertificateAttribute>(map['certificateAttributes'], (value) => CertificateCertificateAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      certificateData: map['certificateData'] == null ? null : pulumi.Output.create<String>(map['certificateData'] as String),
      certificateDataBase64: map['certificateDataBase64'] == null ? null : pulumi.Output.create<String>(map['certificateDataBase64'] as String),
      certificatePolicy: map['certificatePolicy'] == null ? null : pulumi.Output.create<CertificateCertificatePolicy>(CertificateCertificatePolicy.fromMap((map['certificatePolicy'] as Map).cast<String, dynamic>())),
      keyVaultId: map['keyVaultId'] == null ? null : pulumi.Output.create<String>(map['keyVaultId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceManagerId: map['resourceManagerId'] == null ? null : pulumi.Output.create<String>(map['resourceManagerId'] as String),
      resourceManagerVersionlessId: map['resourceManagerVersionlessId'] == null ? null : pulumi.Output.create<String>(map['resourceManagerVersionlessId'] as String),
      secretId: map['secretId'] == null ? null : pulumi.Output.create<String>(map['secretId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      thumbprint: map['thumbprint'] == null ? null : pulumi.Output.create<String>(map['thumbprint'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      versionlessId: map['versionlessId'] == null ? null : pulumi.Output.create<String>(map['versionlessId'] as String),
      versionlessSecretId: map['versionlessSecretId'] == null ? null : pulumi.Output.create<String>(map['versionlessSecretId'] as String),
    );
  }
}

