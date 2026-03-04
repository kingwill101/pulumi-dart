// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_function_app_backup_schedule.dart';

class GetLinuxFunctionAppBackup {
  /// Is this backup job enabled?
  final pulumi.Input<bool> enabled;

  /// The name which should be used for this Linux Function App.
  final pulumi.Input<String> name;

  /// A `schedule` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppBackupSchedule>> schedules;

  /// The SAS URL to the container.
  final pulumi.Input<String> storageAccountUrl;

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
      'schedules':
          pulumi.Input.mapInputValue<
            List<GetLinuxFunctionAppBackupSchedule>,
            List<Map<String, dynamic>>
          >(
            schedules,
            (value) =>
                pulumi.Input.encodeList<
                  GetLinuxFunctionAppBackupSchedule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory GetLinuxFunctionAppBackup.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppBackup(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      schedules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetLinuxFunctionAppBackupSchedule>(
          map['schedules']!,
          (value) => GetLinuxFunctionAppBackupSchedule.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      storageAccountUrl: pulumi.Input.fromValue(
        map['storageAccountUrl'] as String,
      ),
    );
  }
}
