// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_encryption_settings_disk_encryption_key.dart';
import 'snapshot_encryption_settings_key_encryption_key.dart';

class SnapshotEncryptionSettings {
  /// A `disk_encryption_key` block as defined below.
  final pulumi.Input<SnapshotEncryptionSettingsDiskEncryptionKey> diskEncryptionKey;
  /// A `key_encryption_key` block as defined below.
  final pulumi.Input<SnapshotEncryptionSettingsKeyEncryptionKey>? keyEncryptionKey;

  /// Creates a new [SnapshotEncryptionSettings].
  /// [diskEncryptionKey] A `disk_encryption_key` block as defined below.
  /// [keyEncryptionKey] A `key_encryption_key` block as defined below.
  const SnapshotEncryptionSettings({
    required this.diskEncryptionKey,
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey': pulumi.Input.mapInputValue<SnapshotEncryptionSettingsDiskEncryptionKey, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'keyEncryptionKey': ?pulumi.Input.mapOptionalInputValue<SnapshotEncryptionSettingsKeyEncryptionKey, Map<String, dynamic>>(keyEncryptionKey, (value) => value.toMap()),
    };
  }

  factory SnapshotEncryptionSettings.fromMap(Map<String, dynamic> map) {
    return SnapshotEncryptionSettings(
      diskEncryptionKey: pulumi.Input.fromValue(SnapshotEncryptionSettingsDiskEncryptionKey.fromMap((map['diskEncryptionKey']! as Map).cast<String, dynamic>())),
      keyEncryptionKey: (() { final guardedValue = map['keyEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotEncryptionSettingsKeyEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

