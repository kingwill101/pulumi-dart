// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_backup_schedule.dart';

class GetWindowsWebAppBackup {
  /// Is the Backup enabled?
  final bool enabled;
  /// The name of this Windows Web App.
  final String name;
  /// A `schedule` block as defined below.
  final List<GetWindowsWebAppBackupSchedule> schedules;
  /// The SAS URL to the container.
  final String storageAccountUrl;

  /// Creates a new [GetWindowsWebAppBackup].
  /// [enabled] Is the Backup enabled?
  /// [name] The name of this Windows Web App.
  /// [schedules] A `schedule` block as defined below.
  /// [storageAccountUrl] The SAS URL to the container.
  GetWindowsWebAppBackup({
    required this.enabled,
    required this.name,
    required this.schedules,
    required this.storageAccountUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'name': name,
      'schedules': pulumi.Input.encodeList<GetWindowsWebAppBackupSchedule, Map<String, dynamic>>(schedules, (value) => value.toMap()),
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory GetWindowsWebAppBackup.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppBackup(
      enabled: map['enabled'] as bool,
      name: map['name'] as String,
      schedules: pulumi.Input.decodeList<GetWindowsWebAppBackupSchedule>(map['schedules'], (value) => GetWindowsWebAppBackupSchedule.fromMap((value as Map).cast<String, dynamic>())),
      storageAccountUrl: map['storageAccountUrl'] as String,
    );
  }
}

