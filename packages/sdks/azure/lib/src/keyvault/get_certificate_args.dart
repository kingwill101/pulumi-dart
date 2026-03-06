// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_certificate_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_certificate_get_certificate_args_doc}
class GetCertificateArgs {
  /// Specifies the ID of the Key Vault instance where the Secret resides, available on the `azure.keyvault.KeyVault` Data Source / Resource.
  final pulumi.Input<String> keyVaultId;
  /// Specifies the name of the Key Vault Certificate.
  final pulumi.Input<String> name;
  /// Specifies the version of the certificate to look up.  (Defaults to latest)
  ///
  /// &gt; **Note:** The vault must be in the same subscription as the provider. If the vault is in another subscription, you must create an aliased provider for that subscription.
  final pulumi.Input<String>? version;

  /// Creates a new [GetCertificateArgs].
  /// [keyVaultId] Specifies the ID of the Key Vault instance where the Secret resides, available on the `azure.keyvault.KeyVault` Data Source / Resource.
  /// [name] Specifies the name of the Key Vault Certificate.
  /// [version] Specifies the version of the certificate to look up.  (Defaults to latest)
  const GetCertificateArgs({
    required this.keyVaultId,
    required this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': keyVaultId,
      'name': name,
      'version': ?version,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

