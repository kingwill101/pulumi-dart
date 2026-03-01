// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_certificates_get_certificates_args_doc}
/// Arguments for getCertificates.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_certificates_get_certificates_args_doc}
class GetCertificatesArgs {
  /// Specifies whether to include certificates which are not completely provisioned. Defaults to true.
  final pulumi.Input<bool>? includePending;
  /// Specifies the ID of the Key Vault instance to fetch certificate names from, available on the `azure.keyvault.KeyVault` Data Source / Resource.
  ///
  /// > **Note:** The vault must be in the same subscription as the provider. If the vault is in another subscription, you must create an aliased provider for that subscription.
  final pulumi.Input<String> keyVaultId;

  /// Creates a new [GetCertificatesArgs].
  /// [includePending] Specifies whether to include certificates which are not completely provisioned. Defaults to true.
  /// [keyVaultId] Specifies the ID of the Key Vault instance to fetch certificate names from, available on the `azure.keyvault.KeyVault` Data Source / Resource.
  GetCertificatesArgs({
    pulumi.Output<bool>? includePending,
    required pulumi.Output<String> keyVaultId,
  }) :
      includePending = pulumi.Input.asOptionalInput<bool>(includePending),
      keyVaultId = pulumi.Input.asInput<String>(keyVaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includePending': ?includePending,
      'keyVaultId': keyVaultId,
    };
  }

  factory GetCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificatesArgs(
      includePending: map['includePending'] == null ? null : pulumi.Output.create<bool>(map['includePending'] as bool),
      keyVaultId: pulumi.Output.create<String>(map['keyVaultId'] as String),
    );
  }
}

