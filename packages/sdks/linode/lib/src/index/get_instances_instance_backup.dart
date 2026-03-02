// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_backup_schedule.dart';

class GetInstancesInstanceBackup {
  /// Whether this Backup is available for restoration.
  final pulumi.Input<bool> available;
  /// If this Linode has the Backup service enabled.
  final pulumi.Input<bool> enabled;
  final pulumi.Input<List<GetInstancesInstanceBackupSchedule>> schedules;

  /// Creates a new [GetInstancesInstanceBackup].
  /// [available] Whether this Backup is available for restoration.
  /// [enabled] If this Linode has the Backup service enabled.
  /// [schedules] Required.
  GetInstancesInstanceBackup({
    required this.available,
    required this.enabled,
    required this.schedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': available,
      'enabled': enabled,
      'schedules': pulumi.Input.mapInputValue<List<GetInstancesInstanceBackupSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<GetInstancesInstanceBackupSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstancesInstanceBackup.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceBackup(
      available: (map['available'] as bool).input(),
      enabled: (map['enabled'] as bool).input(),
      schedules: (pulumi.Input.decodeList<GetInstancesInstanceBackupSchedule>(map['schedules'], (value) => GetInstancesInstanceBackupSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

