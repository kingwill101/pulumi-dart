// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_certificate_issuer_get_certificate_issuer_args_doc}
/// Arguments for getCertificateIssuer.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_certificate_issuer_get_certificate_issuer_args_doc}
class GetCertificateIssuerArgs {
  /// The ID of the Key Vault in which to locate the Certificate Issuer.
  final pulumi.Input<String> keyVaultId;
  /// The name of the Key Vault Certificate Issuer.
  final pulumi.Input<String> name;

  /// Creates a new [GetCertificateIssuerArgs].
  /// [keyVaultId] The ID of the Key Vault in which to locate the Certificate Issuer.
  /// [name] The name of the Key Vault Certificate Issuer.
  GetCertificateIssuerArgs({
    required pulumi.Output<String> keyVaultId,
    required pulumi.Output<String> name,
  }) :
      keyVaultId = pulumi.Input.asInput<String>(keyVaultId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': keyVaultId,
      'name': name,
    };
  }

  factory GetCertificateIssuerArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateIssuerArgs(
      keyVaultId: pulumi.Output.create<String>(map['keyVaultId'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

