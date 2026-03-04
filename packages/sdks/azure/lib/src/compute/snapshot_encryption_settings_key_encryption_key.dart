// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnapshotEncryptionSettingsKeyEncryptionKey {
  /// The URL to the Key Vault Key used as the Key Encryption Key. This can be found as `id` on the `azure.keyvault.Key` resource.
  final pulumi.Input<String> keyUrl;

  /// The ID of the source Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource.
  final pulumi.Input<String> sourceVaultId;

  /// Creates a new [SnapshotEncryptionSettingsKeyEncryptionKey].
  /// [keyUrl] The URL to the Key Vault Key used as the Key Encryption Key. This can be found as `id` on the `azure.keyvault.Key` resource.
  /// [sourceVaultId] The ID of the source Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource.
  SnapshotEncryptionSettingsKeyEncryptionKey({
    required this.keyUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyUrl': keyUrl, 'sourceVaultId': sourceVaultId};
  }

  factory SnapshotEncryptionSettingsKeyEncryptionKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return SnapshotEncryptionSettingsKeyEncryptionKey(
      keyUrl: pulumi.Input.fromValue(map['keyUrl'] as String),
      sourceVaultId: pulumi.Input.fromValue(map['sourceVaultId'] as String),
    );
  }
}
