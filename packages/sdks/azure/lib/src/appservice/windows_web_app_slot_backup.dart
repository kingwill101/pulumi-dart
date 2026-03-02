// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_slot_backup_schedule.dart';

class WindowsWebAppSlotBackup {
  /// Should this backup job be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The name which should be used for this Backup.
  final pulumi.Input<String> name;
  /// A `schedule` block as defined below.
  final pulumi.Input<WindowsWebAppSlotBackupSchedule> schedule;
  /// The SAS URL to the container.
  final pulumi.Input<String> storageAccountUrl;

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
      'schedule': pulumi.Input.mapInputValue<WindowsWebAppSlotBackupSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory WindowsWebAppSlotBackup.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotBackup(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      name: (map['name'] as String).input(),
      schedule: (WindowsWebAppSlotBackupSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())).input(),
      storageAccountUrl: (map['storageAccountUrl'] as String).input(),
    );
  }
}

