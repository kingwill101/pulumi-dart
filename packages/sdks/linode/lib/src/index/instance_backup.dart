// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_backup_schedule.dart';

class InstanceBackup {
  /// Whether this Backup is available for restoration.
  final pulumi.Input<bool>? available;
  /// If this Linode has the Backup service enabled.
  final pulumi.Input<bool>? enabled;
  final pulumi.Input<List<InstanceBackupSchedule>>? schedules;

  /// Creates a new [InstanceBackup].
  /// [available] Whether this Backup is available for restoration.
  /// [enabled] If this Linode has the Backup service enabled.
  /// [schedules] Optional.
  InstanceBackup({
    this.available,
    this.enabled,
    this.schedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': ?available,
      'enabled': ?enabled,
      'schedules': ?pulumi.Input.mapOptionalInputValue<List<InstanceBackupSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<InstanceBackupSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceBackup.fromMap(Map<String, dynamic> map) {
    return InstanceBackup(
      available: map['available'] == null ? null : (map['available'] as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      schedules: map['schedules'] == null ? null : (pulumi.Input.decodeList<InstanceBackupSchedule>(map['schedules'], (value) => InstanceBackupSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

