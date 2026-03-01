// ignore_for_file: unused_element, unnecessary_cast

import 'linux_web_app_slot_backup_schedule.dart';

class LinuxWebAppSlotBackup {
  /// Should this backup job be enabled? Defaults to `true`.
  final bool? enabled;
  /// The name which should be used for this Backup.
  final String name;
  /// An `schedule` block as defined below.
  final LinuxWebAppSlotBackupSchedule schedule;
  /// The SAS URL to the container.
  final String storageAccountUrl;

  /// Creates a new [LinuxWebAppSlotBackup].
  /// [enabled] Should this backup job be enabled? Defaults to `true`.
  /// [name] The name which should be used for this Backup.
  /// [schedule] An `schedule` block as defined below.
  /// [storageAccountUrl] The SAS URL to the container.
  LinuxWebAppSlotBackup({
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

  factory LinuxWebAppSlotBackup.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotBackup(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] as String,
      schedule: LinuxWebAppSlotBackupSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      storageAccountUrl: map['storageAccountUrl'] as String,
    );
  }
}

