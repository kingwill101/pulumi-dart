// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatedVMManagedDiskTargetDiskEncryptionKeyEncryptionKey {
  /// The URL to the Key Vault Key used as the Key Encryption Key that the Managed Disk will be associated with. This can be found as `id` on the `azure.keyvault.Key` resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> keyUrl;
  /// The ID of the Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> vaultId;

  /// Creates a new [ReplicatedVMManagedDiskTargetDiskEncryptionKeyEncryptionKey].
  /// [keyUrl] The URL to the Key Vault Key used as the Key Encryption Key that the Managed Disk will be associated with. This can be found as `id` on the `azure.keyvault.Key` resource. Changing this forces a new resource to be created.
  /// [vaultId] The ID of the Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource. Changing this forces a new resource to be created.
  const ReplicatedVMManagedDiskTargetDiskEncryptionKeyEncryptionKey({
    required this.keyUrl,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'vaultId': vaultId,
    };
  }

  factory ReplicatedVMManagedDiskTargetDiskEncryptionKeyEncryptionKey.fromMap(Map<String, dynamic> map) {
    return ReplicatedVMManagedDiskTargetDiskEncryptionKeyEncryptionKey(
      keyUrl: pulumi.Input.fromValue(map['keyUrl'] as String),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}

