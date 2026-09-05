// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_slot_backup_schedule.dart';

class LinuxWebAppSlotBackup {
  /// Should this backup job be enabled? Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// The name which should be used for this Backup.
  final pulumi.Input<String> name;
  /// An `schedule` block as defined below.
  final pulumi.Input<LinuxWebAppSlotBackupSchedule> schedule;
  /// The SAS URL to the container.
  final pulumi.Input<String> storageAccountUrl;

  /// Creates a new [LinuxWebAppSlotBackup].
  /// [enabled] Should this backup job be enabled? Defaults to `true`.
  /// [name] The name which should be used for this Backup.
  /// [schedule] An `schedule` block as defined below.
  /// [storageAccountUrl] The SAS URL to the container.
  const LinuxWebAppSlotBackup({
    this.enabled,
    required this.name,
    required this.schedule,
    required this.storageAccountUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': name,
      'schedule': pulumi.Input.mapInputValue<LinuxWebAppSlotBackupSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory LinuxWebAppSlotBackup.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotBackup(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      schedule: pulumi.Input.fromValue(LinuxWebAppSlotBackupSchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
      storageAccountUrl: pulumi.Input.fromValue(map['storageAccountUrl'] as String),
    );
  }
}
