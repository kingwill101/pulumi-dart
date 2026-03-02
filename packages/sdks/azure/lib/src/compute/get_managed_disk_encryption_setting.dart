// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_disk_encryption_setting_disk_encryption_key.dart';
import 'get_managed_disk_encryption_setting_key_encryption_key.dart';

class GetManagedDiskEncryptionSetting {
  /// A `disk_encryption_key` block as defined above.
  final pulumi.Input<List<GetManagedDiskEncryptionSettingDiskEncryptionKey>> diskEncryptionKeys;
  final pulumi.Input<bool> enabled;
  /// A `key_encryption_key` block as defined below.
  final pulumi.Input<List<GetManagedDiskEncryptionSettingKeyEncryptionKey>> keyEncryptionKeys;

  /// Creates a new [GetManagedDiskEncryptionSetting].
  /// [diskEncryptionKeys] A `disk_encryption_key` block as defined above.
  /// [enabled] Required.
  /// [keyEncryptionKeys] A `key_encryption_key` block as defined below.
  GetManagedDiskEncryptionSetting({
    required this.diskEncryptionKeys,
    required this.enabled,
    required this.keyEncryptionKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKeys': pulumi.Input.mapInputValue<List<GetManagedDiskEncryptionSettingDiskEncryptionKey>, List<Map<String, dynamic>>>(diskEncryptionKeys, (value) => pulumi.Input.encodeList<GetManagedDiskEncryptionSettingDiskEncryptionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'keyEncryptionKeys': pulumi.Input.mapInputValue<List<GetManagedDiskEncryptionSettingKeyEncryptionKey>, List<Map<String, dynamic>>>(keyEncryptionKeys, (value) => pulumi.Input.encodeList<GetManagedDiskEncryptionSettingKeyEncryptionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedDiskEncryptionSetting.fromMap(Map<String, dynamic> map) {
    return GetManagedDiskEncryptionSetting(
      diskEncryptionKeys: (pulumi.Input.decodeList<GetManagedDiskEncryptionSettingDiskEncryptionKey>(map['diskEncryptionKeys'], (value) => GetManagedDiskEncryptionSettingDiskEncryptionKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: (map['enabled'] as bool).input(),
      keyEncryptionKeys: (pulumi.Input.decodeList<GetManagedDiskEncryptionSettingKeyEncryptionKey>(map['keyEncryptionKeys'], (value) => GetManagedDiskEncryptionSettingKeyEncryptionKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

