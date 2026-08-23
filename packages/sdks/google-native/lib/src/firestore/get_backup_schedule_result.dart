// ignore_for_file: unused_element, unnecessary_cast

import 'google_firestore_admin_v1_weekly_recurrence_response.dart';

/// Result data returned by getBackupSchedule.
class GetBackupScheduleResult {
  /// The timestamp at which this backup schedule was created and effective since. No backups will be created for this schedule before this time.
  final String createTime;
  /// For a schedule that runs daily at a specified time.
  final Map<String, dynamic> dailyRecurrence;
  /// The unique backup schedule identifier across all locations and databases for the given project. This will be auto-assigned. Format is `projects/{project}/databases/{database}/backupSchedules/{backup_schedule}`
  final String name;
  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  final String retention;
  /// The timestamp at which this backup schedule was most recently updated. When a backup schedule is first created, this is the same as create_time.
  final String updateTime;
  /// For a schedule that runs weekly on a specific day and time.
  final GoogleFirestoreAdminV1WeeklyRecurrenceResponse weeklyRecurrence;

  /// Creates a new [GetBackupScheduleResult].
  /// [createTime] The timestamp at which this backup schedule was created and effective since. No backups will be created for this schedule before this time.
  /// [dailyRecurrence] For a schedule that runs daily at a specified time.
  /// [name] The unique backup schedule identifier across all locations and databases for the given project. This will be auto-assigned. Format is `projects/{project}/databases/{database}/backupSchedules/{backup_schedule}`
  /// [retention] At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// [updateTime] The timestamp at which this backup schedule was most recently updated. When a backup schedule is first created, this is the same as create_time.
  /// [weeklyRecurrence] For a schedule that runs weekly on a specific day and time.
  const GetBackupScheduleResult({
    required this.createTime,
    required this.dailyRecurrence,
    required this.name,
    required this.retention,
    required this.updateTime,
    required this.weeklyRecurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dailyRecurrence': dailyRecurrence,
      'name': name,
      'retention': retention,
      'updateTime': updateTime,
      'weeklyRecurrence': weeklyRecurrence.toMap(),
    };
  }

  factory GetBackupScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetBackupScheduleResult(
      createTime: map['createTime'] as String,
      dailyRecurrence: (map['dailyRecurrence']! as Map).cast<String, dynamic>(),
      name: map['name'] as String,
      retention: map['retention'] as String,
      updateTime: map['updateTime'] as String,
      weeklyRecurrence: GoogleFirestoreAdminV1WeeklyRecurrenceResponse.fromMap((map['weeklyRecurrence']! as Map).cast<String, dynamic>()),
    );
  }
}
