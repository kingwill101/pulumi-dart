// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_function_app_backup_schedule.dart';

class GetWindowsFunctionAppBackup {
  /// Is the Backup Job enabled?
  final pulumi.Input<bool> enabled;
  /// The name of this Windows Function App.
  final pulumi.Input<String> name;
  /// A `schedule` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppBackupSchedule>> schedules;
  /// The SAS URL to the container.
  final pulumi.Input<String> storageAccountUrl;

  /// Creates a new [GetWindowsFunctionAppBackup].
  /// [enabled] Is the Backup Job enabled?
  /// [name] The name of this Windows Function App.
  /// [schedules] A `schedule` block as defined below.
  /// [storageAccountUrl] The SAS URL to the container.
  const GetWindowsFunctionAppBackup({
    required this.enabled,
    required this.name,
    required this.schedules,
    required this.storageAccountUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'name': name,
      'schedules': pulumi.Input.mapInputValue<List<GetWindowsFunctionAppBackupSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<GetWindowsFunctionAppBackupSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory GetWindowsFunctionAppBackup.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppBackup(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      schedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsFunctionAppBackupSchedule>(map['schedules']!, (value) => GetWindowsFunctionAppBackupSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      storageAccountUrl: pulumi.Input.fromValue(map['storageAccountUrl'] as String),
    );
  }
}
