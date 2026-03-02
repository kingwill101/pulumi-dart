// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnapshotEncryptionSettingKeyEncryptionKey {
  final pulumi.Input<String> keyUrl;
  final pulumi.Input<String> sourceVaultId;

  /// Creates a new [GetSnapshotEncryptionSettingKeyEncryptionKey].
  /// [keyUrl] Required.
  /// [sourceVaultId] Required.
  GetSnapshotEncryptionSettingKeyEncryptionKey({
    required this.keyUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory GetSnapshotEncryptionSettingKeyEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetSnapshotEncryptionSettingKeyEncryptionKey(
      keyUrl: (map['keyUrl'] as String).input(),
      sourceVaultId: (map['sourceVaultId'] as String).input(),
    );
  }
}

