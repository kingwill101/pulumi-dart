// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_disk_encryption_settings_disk_encryption_key.dart';
import 'managed_disk_encryption_settings_key_encryption_key.dart';

class ManagedDiskEncryptionSettings {
  /// A `disk_encryption_key` block as defined above.
  final pulumi.Input<ManagedDiskEncryptionSettingsDiskEncryptionKey> diskEncryptionKey;
  /// A `key_encryption_key` block as defined below.
  final pulumi.Input<ManagedDiskEncryptionSettingsKeyEncryptionKey>? keyEncryptionKey;

  /// Creates a new [ManagedDiskEncryptionSettings].
  /// [diskEncryptionKey] A `disk_encryption_key` block as defined above.
  /// [keyEncryptionKey] A `key_encryption_key` block as defined below.
  ManagedDiskEncryptionSettings({
    required this.diskEncryptionKey,
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey': pulumi.Input.mapInputValue<ManagedDiskEncryptionSettingsDiskEncryptionKey, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'keyEncryptionKey': ?pulumi.Input.mapOptionalInputValue<ManagedDiskEncryptionSettingsKeyEncryptionKey, Map<String, dynamic>>(keyEncryptionKey, (value) => value.toMap()),
    };
  }

  factory ManagedDiskEncryptionSettings.fromMap(Map<String, dynamic> map) {
    return ManagedDiskEncryptionSettings(
      diskEncryptionKey: (ManagedDiskEncryptionSettingsDiskEncryptionKey.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>())).input(),
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : (ManagedDiskEncryptionSettingsKeyEncryptionKey.fromMap((map['keyEncryptionKey']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

