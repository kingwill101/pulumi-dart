// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedDisksDiskEncryptionSettingKeyEncryptionKey {
  /// The URL to the Key Vault Key used as the Key Encryption Key.
  final pulumi.Input<String> keyUrl;
  /// The ID of the source Key Vault.
  final pulumi.Input<String> sourceVaultId;

  /// Creates a new [GetManagedDisksDiskEncryptionSettingKeyEncryptionKey].
  /// [keyUrl] The URL to the Key Vault Key used as the Key Encryption Key.
  /// [sourceVaultId] The ID of the source Key Vault.
  GetManagedDisksDiskEncryptionSettingKeyEncryptionKey({
    required this.keyUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory GetManagedDisksDiskEncryptionSettingKeyEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetManagedDisksDiskEncryptionSettingKeyEncryptionKey(
      keyUrl: pulumi.Input.fromValue(map['keyUrl'] as String),
      sourceVaultId: pulumi.Input.fromValue(map['sourceVaultId'] as String),
    );
  }
}

