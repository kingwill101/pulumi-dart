// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_automated_backup_policy_weekly_schedule_start_time.dart';

class GetClusterAutomatedBackupPolicyWeeklySchedule {
  /// The days of the week to perform a backup. At least one day of the week must be provided. Possible values: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
  final pulumi.Input<List<String>> daysOfWeeks;
  /// The times during the day to start a backup. At least one start time must be provided. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00).
  final pulumi.Input<List<GetClusterAutomatedBackupPolicyWeeklyScheduleStartTime>> startTimes;

  /// Creates a new [GetClusterAutomatedBackupPolicyWeeklySchedule].
  /// [daysOfWeeks] The days of the week to perform a backup. At least one day of the week must be provided. Possible values: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
  /// [startTimes] The times during the day to start a backup. At least one start time must be provided. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00).
  GetClusterAutomatedBackupPolicyWeeklySchedule({
    required this.daysOfWeeks,
    required this.startTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeeks': daysOfWeeks,
      'startTimes': pulumi.Input.mapInputValue<List<GetClusterAutomatedBackupPolicyWeeklyScheduleStartTime>, List<Map<String, dynamic>>>(startTimes, (value) => pulumi.Input.encodeList<GetClusterAutomatedBackupPolicyWeeklyScheduleStartTime, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterAutomatedBackupPolicyWeeklySchedule.fromMap(Map<String, dynamic> map) {
    return GetClusterAutomatedBackupPolicyWeeklySchedule(
      daysOfWeeks: ((map['daysOfWeeks'] as List).cast<String>()).input(),
      startTimes: (pulumi.Input.decodeList<GetClusterAutomatedBackupPolicyWeeklyScheduleStartTime>(map['startTimes'], (value) => GetClusterAutomatedBackupPolicyWeeklyScheduleStartTime.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

