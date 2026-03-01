// ignore_for_file: unused_element, unnecessary_cast

import 'app_service_backup_schedule.dart';

class AppServiceBackup {
  /// Is this Backup enabled? Defaults to `true`.
  final bool? enabled;
  /// Specifies the name for this Backup.
  final String name;
  /// A `schedule` block as defined below.
  final AppServiceBackupSchedule schedule;
  /// The SAS URL to a Storage Container where Backups should be saved.
  final String storageAccountUrl;

  /// Creates a new [AppServiceBackup].
  /// [enabled] Is this Backup enabled? Defaults to `true`.
  /// [name] Specifies the name for this Backup.
  /// [schedule] A `schedule` block as defined below.
  /// [storageAccountUrl] The SAS URL to a Storage Container where Backups should be saved.
  AppServiceBackup({
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

  factory AppServiceBackup.fromMap(Map<String, dynamic> map) {
    return AppServiceBackup(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] as String,
      schedule: AppServiceBackupSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      storageAccountUrl: map['storageAccountUrl'] as String,
    );
  }
}

