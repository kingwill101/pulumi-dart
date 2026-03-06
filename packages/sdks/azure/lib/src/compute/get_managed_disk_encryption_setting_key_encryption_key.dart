// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedDiskEncryptionSettingKeyEncryptionKey {
  /// The URL to the Key Vault Key used as the Key Encryption Key.
  final pulumi.Input<String> keyUrl;
  /// The ID of the source Key Vault.
  final pulumi.Input<String> sourceVaultId;

  /// Creates a new [GetManagedDiskEncryptionSettingKeyEncryptionKey].
  /// [keyUrl] The URL to the Key Vault Key used as the Key Encryption Key.
  /// [sourceVaultId] The ID of the source Key Vault.
  const GetManagedDiskEncryptionSettingKeyEncryptionKey({
    required this.keyUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory GetManagedDiskEncryptionSettingKeyEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetManagedDiskEncryptionSettingKeyEncryptionKey(
      keyUrl: pulumi.Input.fromValue(map['keyUrl'] as String),
      sourceVaultId: pulumi.Input.fromValue(map['sourceVaultId'] as String),
    );
  }
}

