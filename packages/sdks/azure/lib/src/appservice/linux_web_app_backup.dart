// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_backup_schedule.dart';

class LinuxWebAppBackup {
  /// Should this backup job be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The name which should be used for this Backup.
  final pulumi.Input<String> name;
  /// A `schedule` block as defined below.
  final pulumi.Input<LinuxWebAppBackupSchedule> schedule;
  /// The SAS URL to the container.
  final pulumi.Input<String> storageAccountUrl;

  /// Creates a new [LinuxWebAppBackup].
  /// [enabled] Should this backup job be enabled? Defaults to `true`.
  /// [name] The name which should be used for this Backup.
  /// [schedule] A `schedule` block as defined below.
  /// [storageAccountUrl] The SAS URL to the container.
  LinuxWebAppBackup({
    this.enabled,
    required this.name,
    required this.schedule,
    required this.storageAccountUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': name,
      'schedule': pulumi.Input.mapInputValue<LinuxWebAppBackupSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory LinuxWebAppBackup.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppBackup(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      name: (map['name'] as String).input(),
      schedule: (LinuxWebAppBackupSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())).input(),
      storageAccountUrl: (map['storageAccountUrl'] as String).input(),
    );
  }
}

