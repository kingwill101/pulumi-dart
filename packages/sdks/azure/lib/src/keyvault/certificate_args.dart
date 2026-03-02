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
    this.certificate,
    this.certificatePolicy,
    required this.keyVaultId,
    this.name,
    this.tags,
  });

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
      certificate: map['certificate'] == null ? null : (CertificateCertificate.fromMap((map['certificate']! as Map).cast<String, dynamic>())).input(),
      certificatePolicy: map['certificatePolicy'] == null ? null : (CertificateCertificatePolicy.fromMap((map['certificatePolicy']! as Map).cast<String, dynamic>())).input(),
      keyVaultId: (map['keyVaultId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

