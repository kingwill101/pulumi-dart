// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_backup_schedule.dart';

class GetLinuxWebAppBackup {
  /// Is the Backup enabled?
  final bool enabled;
  /// The name of this Linux Web App.
  final String name;
  /// A `schedule` block as defined below.
  final List<GetLinuxWebAppBackupSchedule> schedules;
  /// The SAS URL to the container.
  final String storageAccountUrl;

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
      'schedules': pulumi.Input.encodeList<GetLinuxWebAppBackupSchedule, Map<String, dynamic>>(schedules, (value) => value.toMap()),
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory GetLinuxWebAppBackup.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppBackup(
      enabled: map['enabled'] as bool,
      name: map['name'] as String,
      schedules: pulumi.Input.decodeList<GetLinuxWebAppBackupSchedule>(map['schedules'], (value) => GetLinuxWebAppBackupSchedule.fromMap((value as Map).cast<String, dynamic>())),
      storageAccountUrl: map['storageAccountUrl'] as String,
    );
  }
}

