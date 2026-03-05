// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_disks_disk_encryption_setting_disk_encryption_key.dart';
import 'get_managed_disks_disk_encryption_setting_key_encryption_key.dart';

class GetManagedDisksDiskEncryptionSetting {
  /// A `disk_encryption_key` block as defined above.
  final pulumi.Input<List<GetManagedDisksDiskEncryptionSettingDiskEncryptionKey>> diskEncryptionKeys;
  final pulumi.Input<bool> enabled;
  /// A `key_encryption_key` block as defined below.
  final pulumi.Input<List<GetManagedDisksDiskEncryptionSettingKeyEncryptionKey>> keyEncryptionKeys;

  /// Creates a new [GetManagedDisksDiskEncryptionSetting].
  /// [diskEncryptionKeys] A `disk_encryption_key` block as defined above.
  /// [enabled] Required.
  /// [keyEncryptionKeys] A `key_encryption_key` block as defined below.
  GetManagedDisksDiskEncryptionSetting({
    required this.diskEncryptionKeys,
    required this.enabled,
    required this.keyEncryptionKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKeys': pulumi.Input.mapInputValue<List<GetManagedDisksDiskEncryptionSettingDiskEncryptionKey>, List<Map<String, dynamic>>>(diskEncryptionKeys, (value) => pulumi.Input.encodeList<GetManagedDisksDiskEncryptionSettingDiskEncryptionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'keyEncryptionKeys': pulumi.Input.mapInputValue<List<GetManagedDisksDiskEncryptionSettingKeyEncryptionKey>, List<Map<String, dynamic>>>(keyEncryptionKeys, (value) => pulumi.Input.encodeList<GetManagedDisksDiskEncryptionSettingKeyEncryptionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedDisksDiskEncryptionSetting.fromMap(Map<String, dynamic> map) {
    return GetManagedDisksDiskEncryptionSetting(
      diskEncryptionKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDisksDiskEncryptionSettingDiskEncryptionKey>(map['diskEncryptionKeys']!, (value) => GetManagedDisksDiskEncryptionSettingDiskEncryptionKey.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      keyEncryptionKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDisksDiskEncryptionSettingKeyEncryptionKey>(map['keyEncryptionKeys']!, (value) => GetManagedDisksDiskEncryptionSettingKeyEncryptionKey.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

