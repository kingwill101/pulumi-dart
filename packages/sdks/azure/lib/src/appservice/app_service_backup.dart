// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_backup_schedule.dart';

class AppServiceBackup {
  /// Is this Backup enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Specifies the name for this Backup.
  final pulumi.Input<String> name;

  /// A `schedule` block as defined below.
  final pulumi.Input<AppServiceBackupSchedule> schedule;

  /// The SAS URL to a Storage Container where Backups should be saved.
  final pulumi.Input<String> storageAccountUrl;

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
      'schedule':
          pulumi.Input.mapInputValue<
            AppServiceBackupSchedule,
            Map<String, dynamic>
          >(schedule, (value) => value.toMap()),
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory AppServiceBackup.fromMap(Map<String, dynamic> map) {
    return AppServiceBackup(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      schedule: pulumi.Input.fromValue(
        AppServiceBackupSchedule.fromMap(
          (map['schedule']! as Map).cast<String, dynamic>(),
        ),
      ),
      storageAccountUrl: pulumi.Input.fromValue(
        map['storageAccountUrl'] as String,
      ),
    );
  }
}
