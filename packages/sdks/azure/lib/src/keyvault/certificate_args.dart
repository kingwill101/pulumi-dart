// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate.dart';
import 'certificate_certificate_policy.dart';

/// {@template pulumi_keyvault_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_keyvault_certificate_certificate_args_doc}
class CertificateArgs {
  /// A `certificate` block as defined below, used to Import an existing certificate. Changing this will create a new version of the Key Vault Certificate.
  final pulumi.Input<CertificateCertificate>? certificate;
  /// A `certificate_policy` block as defined below. Changing this (except the `lifetime_action` field) will create a new version of the Key Vault Certificate.
  ///
  /// > **NOTE:** When creating a Key Vault Certificate, at least one of `certificate` or `certificate_policy` is required. Provide `certificate` to import an existing certificate, `certificate_policy` to generate a new certificate.
  final pulumi.Input<CertificateCertificatePolicy>? certificatePolicy;
  /// The ID of the Key Vault where the Certificate should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> keyVaultId;
  /// Specifies the name of the Key Vault Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CertificateArgs].
  /// [certificate] A `certificate` block as defined below, used to Import an existing certificate. Changing this will create a new version of the Key Vault Certificate.
  /// [certificatePolicy] A `certificate_policy` block as defined below. Changing this (except the `lifetime_action` field) will create a new version of the Key Vault Certificate.
  /// [keyVaultId] The ID of the Key Vault where the Certificate should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Key Vault Certificate. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  CertificateArgs({
    pulumi.Output<CertificateCertificate>? certificate,
    pulumi.Output<CertificateCertificatePolicy>? certificatePolicy,
    required pulumi.Output<String> keyVaultId,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      certificate = pulumi.Input.asOptionalInput<CertificateCertificate>(certificate),
      certificatePolicy = pulumi.Input.asOptionalInput<CertificateCertificatePolicy>(certificatePolicy),
      keyVaultId = pulumi.Input.asInput<String>(keyVaultId),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?pulumi.Input.mapOptionalInputValue<CertificateCertificate, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'certificatePolicy': ?pulumi.Input.mapOptionalInputValue<CertificateCertificatePolicy, Map<String, dynamic>>(certificatePolicy, (value) => value.toMap()),
      'keyVaultId': keyVaultId,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificate: map['certificate'] == null ? null : pulumi.Output.create<CertificateCertificate>(CertificateCertificate.fromMap((map['certificate'] as Map).cast<String, dynamic>())),
      certificatePolicy: map['certificatePolicy'] == null ? null : pulumi.Output.create<CertificateCertificatePolicy>(CertificateCertificatePolicy.fromMap((map['certificatePolicy'] as Map).cast<String, dynamic>())),
      keyVaultId: pulumi.Output.create<String>(map['keyVaultId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

