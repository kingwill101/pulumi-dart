// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_function_app_backup_schedule.dart';

class GetLinuxFunctionAppBackup {
  /// Is this backup job enabled?
  final bool enabled;
  /// The name which should be used for this Linux Function App.
  final String name;
  /// A `schedule` block as defined below.
  final List<GetLinuxFunctionAppBackupSchedule> schedules;
  /// The SAS URL to the container.
  final String storageAccountUrl;

  /// Creates a new [GetLinuxFunctionAppBackup].
  /// [enabled] Is this backup job enabled?
  /// [name] The name which should be used for this Linux Function App.
  /// [schedules] A `schedule` block as defined below.
  /// [storageAccountUrl] The SAS URL to the container.
  GetLinuxFunctionAppBackup({
    required this.enabled,
    required this.name,
    required this.schedules,
    required this.storageAccountUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'name': name,
      'schedules': pulumi.Input.encodeList<GetLinuxFunctionAppBackupSchedule, Map<String, dynamic>>(schedules, (value) => value.toMap()),
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory GetLinuxFunctionAppBackup.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppBackup(
      enabled: map['enabled'] as bool,
      name: map['name'] as String,
      schedules: pulumi.Input.decodeList<GetLinuxFunctionAppBackupSchedule>(map['schedules'], (value) => GetLinuxFunctionAppBackupSchedule.fromMap((value as Map).cast<String, dynamic>())),
      storageAccountUrl: map['storageAccountUrl'] as String,
    );
  }
}

