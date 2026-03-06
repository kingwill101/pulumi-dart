// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnapshotEncryptionSettingDiskEncryptionKey {
  final pulumi.Input<String> secretUrl;
  final pulumi.Input<String> sourceVaultId;

  /// Creates a new [GetSnapshotEncryptionSettingDiskEncryptionKey].
  /// [secretUrl] Required.
  /// [sourceVaultId] Required.
  const GetSnapshotEncryptionSettingDiskEncryptionKey({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory GetSnapshotEncryptionSettingDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetSnapshotEncryptionSettingDiskEncryptionKey(
      secretUrl: pulumi.Input.fromValue(map['secretUrl'] as String),
      sourceVaultId: pulumi.Input.fromValue(map['sourceVaultId'] as String),
    );
  }
}

