// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedDiskEncryptionSettingsDiskEncryptionKey {
  /// The URL to the Key Vault Secret used as the Disk Encryption Key. This can be found as `id` on the `azure.keyvault.Secret` resource.
  final pulumi.Input<String> secretUrl;
  /// The ID of the source Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource.
  final pulumi.Input<String> sourceVaultId;

  /// Creates a new [ManagedDiskEncryptionSettingsDiskEncryptionKey].
  /// [secretUrl] The URL to the Key Vault Secret used as the Disk Encryption Key. This can be found as `id` on the `azure.keyvault.Secret` resource.
  /// [sourceVaultId] The ID of the source Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource.
  ManagedDiskEncryptionSettingsDiskEncryptionKey({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory ManagedDiskEncryptionSettingsDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return ManagedDiskEncryptionSettingsDiskEncryptionKey(
      secretUrl: (map['secretUrl'] as String).input(),
      sourceVaultId: (map['sourceVaultId'] as String).input(),
    );
  }
}

