// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_backup_schedule.dart';

class GetWindowsWebAppBackup {
  /// Is the Backup enabled?
  final pulumi.Input<bool> enabled;
  /// The name of this Windows Web App.
  final pulumi.Input<String> name;
  /// A `schedule` block as defined below.
  final pulumi.Input<List<GetWindowsWebAppBackupSchedule>> schedules;
  /// The SAS URL to the container.
  final pulumi.Input<String> storageAccountUrl;

  /// Creates a new [GetWindowsWebAppBackup].
  /// [enabled] Is the Backup enabled?
  /// [name] The name of this Windows Web App.
  /// [schedules] A `schedule` block as defined below.
  /// [storageAccountUrl] The SAS URL to the container.
  const GetWindowsWebAppBackup({
    required this.enabled,
    required this.name,
    required this.schedules,
    required this.storageAccountUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'name': name,
      'schedules': pulumi.Input.mapInputValue<List<GetWindowsWebAppBackupSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<GetWindowsWebAppBackupSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory GetWindowsWebAppBackup.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppBackup(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      schedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppBackupSchedule>(map['schedules']!, (value) => GetWindowsWebAppBackupSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      storageAccountUrl: pulumi.Input.fromValue(map['storageAccountUrl'] as String),
    );
  }
}
