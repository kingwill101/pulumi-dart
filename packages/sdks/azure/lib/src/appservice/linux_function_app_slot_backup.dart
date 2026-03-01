// ignore_for_file: unused_element, unnecessary_cast

import 'linux_function_app_slot_backup_schedule.dart';

class LinuxFunctionAppSlotBackup {
  /// Should this backup job be enabled? Defaults to `true`.
  final bool? enabled;
  /// The name which should be used for this Backup.
  final String name;
  /// a `schedule` block as detailed below.
  final LinuxFunctionAppSlotBackupSchedule schedule;
  /// The SAS URL to the container.
  final String storageAccountUrl;

  /// Creates a new [LinuxFunctionAppSlotBackup].
  /// [enabled] Should this backup job be enabled? Defaults to `true`.
  /// [name] The name which should be used for this Backup.
  /// [schedule] a `schedule` block as detailed below.
  /// [storageAccountUrl] The SAS URL to the container.
  LinuxFunctionAppSlotBackup({
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

  factory LinuxFunctionAppSlotBackup.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSlotBackup(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] as String,
      schedule: LinuxFunctionAppSlotBackupSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      storageAccountUrl: map['storageAccountUrl'] as String,
    );
  }
}

