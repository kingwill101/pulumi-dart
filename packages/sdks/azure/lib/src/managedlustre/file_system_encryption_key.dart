// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileSystemEncryptionKey {
  /// The URL to the Key Vault Key used as the Encryption Key. This can be found as `id` on the `azure.keyvault.Key` resource.
  final pulumi.Input<String> keyUrl;
  /// The ID of the source Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource.
  final pulumi.Input<String> sourceVaultId;

  /// Creates a new [FileSystemEncryptionKey].
  /// [keyUrl] The URL to the Key Vault Key used as the Encryption Key. This can be found as `id` on the `azure.keyvault.Key` resource.
  /// [sourceVaultId] The ID of the source Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource.
  FileSystemEncryptionKey({
    required this.keyUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory FileSystemEncryptionKey.fromMap(Map<String, dynamic> map) {
    return FileSystemEncryptionKey(
      keyUrl: (map['keyUrl'] as String).input(),
      sourceVaultId: (map['sourceVaultId'] as String).input(),
    );
  }
}

