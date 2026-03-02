// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_backup_schedule.dart';

class GetLinuxWebAppBackup {
  /// Is the Backup enabled?
  final pulumi.Input<bool> enabled;
  /// The name of this Linux Web App.
  final pulumi.Input<String> name;
  /// A `schedule` block as defined below.
  final pulumi.Input<List<GetLinuxWebAppBackupSchedule>> schedules;
  /// The SAS URL to the container.
  final pulumi.Input<String> storageAccountUrl;

  /// Creates a new [GetLinuxWebAppBackup].
  /// [enabled] Is the Backup enabled?
  /// [name] The name of this Linux Web App.
  /// [schedules] A `schedule` block as defined below.
  /// [storageAccountUrl] The SAS URL to the container.
  GetLinuxWebAppBackup({
    required this.enabled,
    required this.name,
    required this.schedules,
    required this.storageAccountUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'name': name,
      'schedules': pulumi.Input.mapInputValue<List<GetLinuxWebAppBackupSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<GetLinuxWebAppBackupSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory GetLinuxWebAppBackup.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppBackup(
      enabled: (map['enabled'] as bool).input(),
      name: (map['name'] as String).input(),
      schedules: (pulumi.Input.decodeList<GetLinuxWebAppBackupSchedule>(map['schedules'], (value) => GetLinuxWebAppBackupSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageAccountUrl: (map['storageAccountUrl'] as String).input(),
    );
  }
}

