// ignore_for_file: unused_element, unnecessary_cast

import 'windows_web_app_slot_backup_schedule.dart';

class WindowsWebAppSlotBackup {
  /// Should this backup job be enabled? Defaults to `true`.
  final bool? enabled;
  /// The name which should be used for this Backup.
  final String name;
  /// A `schedule` block as defined below.
  final WindowsWebAppSlotBackupSchedule schedule;
  /// The SAS URL to the container.
  final String storageAccountUrl;

  /// Creates a new [WindowsWebAppSlotBackup].
  /// [enabled] Should this backup job be enabled? Defaults to `true`.
  /// [name] The name which should be used for this Backup.
  /// [schedule] A `schedule` block as defined below.
  /// [storageAccountUrl] The SAS URL to the container.
  WindowsWebAppSlotBackup({
    this.enabled,
    required this.name,
    required this.schedule,
    required this.storageAccountUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': name,
      'schedule': schedule.toMap(),
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory WindowsWebAppSlotBackup.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotBackup(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] as String,
      schedule: WindowsWebAppSlotBackupSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      storageAccountUrl: map['storageAccountUrl'] as String,
    );
  }
}

