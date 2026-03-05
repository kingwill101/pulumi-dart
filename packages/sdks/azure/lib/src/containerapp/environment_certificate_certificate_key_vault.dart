// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentCertificateCertificateKeyVault {
  /// The managed identity to authenticate with Azure Key Vault. Possible values are the resource ID of user-assigned identity, and `System` for system-assigned identity. Defaults to `System`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Please make sure [required permissions](https://learn.microsoft.com/en-us/azure/container-apps/key-vault-certificates-manage) are correctly configured for your Key Vault and managed identity.
  final pulumi.Input<String>? identity;
  /// The ID of the Key Vault Secret containing the certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String> keyVaultSecretId;

  /// Creates a new [EnvironmentCertificateCertificateKeyVault].
  /// [identity] The managed identity to authenticate with Azure Key Vault. Possible values are the resource ID of user-assigned identity, and `System` for system-assigned identity. Defaults to `System`. Changing this forces a new resource to be created.
  /// [keyVaultSecretId] The ID of the Key Vault Secret containing the certificate. Changing this forces a new resource to be created.
  EnvironmentCertificateCertificateKeyVault({
    this.identity,
    required this.keyVaultSecretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyVaultSecretId': keyVaultSecretId,
    };
  }

  factory EnvironmentCertificateCertificateKeyVault.fromMap(Map<String, dynamic> map) {
    return EnvironmentCertificateCertificateKeyVault(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultSecretId: pulumi.Input.fromValue(map['keyVaultSecretId'] as String),
    );
  }
}

