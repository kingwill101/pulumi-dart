// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_encryption_setting_disk_encryption_key.dart';
import 'get_snapshot_encryption_setting_key_encryption_key.dart';

class GetSnapshotEncryptionSetting {
  final pulumi.Input<List<GetSnapshotEncryptionSettingDiskEncryptionKey>> diskEncryptionKeys;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<List<GetSnapshotEncryptionSettingKeyEncryptionKey>> keyEncryptionKeys;

  /// Creates a new [GetSnapshotEncryptionSetting].
  /// [diskEncryptionKeys] Required.
  /// [enabled] Required.
  /// [keyEncryptionKeys] Required.
  GetSnapshotEncryptionSetting({
    required this.diskEncryptionKeys,
    required this.enabled,
    required this.keyEncryptionKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKeys': pulumi.Input.mapInputValue<List<GetSnapshotEncryptionSettingDiskEncryptionKey>, List<Map<String, dynamic>>>(diskEncryptionKeys, (value) => pulumi.Input.encodeList<GetSnapshotEncryptionSettingDiskEncryptionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'keyEncryptionKeys': pulumi.Input.mapInputValue<List<GetSnapshotEncryptionSettingKeyEncryptionKey>, List<Map<String, dynamic>>>(keyEncryptionKeys, (value) => pulumi.Input.encodeList<GetSnapshotEncryptionSettingKeyEncryptionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSnapshotEncryptionSetting.fromMap(Map<String, dynamic> map) {
    return GetSnapshotEncryptionSetting(
      diskEncryptionKeys: (pulumi.Input.decodeList<GetSnapshotEncryptionSettingDiskEncryptionKey>(map['diskEncryptionKeys'], (value) => GetSnapshotEncryptionSettingDiskEncryptionKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: (map['enabled'] as bool).input(),
      keyEncryptionKeys: (pulumi.Input.decodeList<GetSnapshotEncryptionSettingKeyEncryptionKey>(map['keyEncryptionKeys'], (value) => GetSnapshotEncryptionSettingKeyEncryptionKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

