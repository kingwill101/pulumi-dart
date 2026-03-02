// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of a backup schedule. Describes how often should be the backup performed and what should be the retention policy.
class BackupScheduleResponse {
  /// How often the backup should be executed (e.g. for weekly backup, this should be set to 7 and FrequencyUnit should be set to Day)
  final pulumi.Input<int> frequencyInterval;
  /// The unit of time for how often the backup should be executed (e.g. for weekly backup, this should be set to Day and FrequencyInterval should be set to 7)
  final pulumi.Input<String> frequencyUnit;
  /// True if the retention policy should always keep at least one backup in the storage account, regardless how old it is; false otherwise.
  final pulumi.Input<bool> keepAtLeastOneBackup;
  /// Last time when this schedule was triggered.
  final pulumi.Input<String> lastExecutionTime;
  /// After how many days backups should be deleted.
  final pulumi.Input<int> retentionPeriodInDays;
  /// When the schedule should start working.
  final pulumi.Input<String>? startTime;

  /// Creates a new [BackupScheduleResponse].
  /// [frequencyInterval] How often the backup should be executed (e.g. for weekly backup, this should be set to 7 and FrequencyUnit should be set to Day)
  /// [frequencyUnit] The unit of time for how often the backup should be executed (e.g. for weekly backup, this should be set to Day and FrequencyInterval should be set to 7)
  /// [keepAtLeastOneBackup] True if the retention policy should always keep at least one backup in the storage account, regardless how old it is; false otherwise.
  /// [lastExecutionTime] Last time when this schedule was triggered.
  /// [retentionPeriodInDays] After how many days backups should be deleted.
  /// [startTime] When the schedule should start working.
  BackupScheduleResponse({
    required this.frequencyInterval,
    required this.frequencyUnit,
    required this.keepAtLeastOneBackup,
    required this.lastExecutionTime,
    required this.retentionPeriodInDays,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequencyInterval': frequencyInterval,
      'frequencyUnit': frequencyUnit,
      'keepAtLeastOneBackup': keepAtLeastOneBackup,
      'lastExecutionTime': lastExecutionTime,
      'retentionPeriodInDays': retentionPeriodInDays,
      'startTime': ?startTime,
    };
  }

  factory BackupScheduleResponse.fromMap(Map<String, dynamic> map) {
    return BackupScheduleResponse(
      frequencyInterval: (map['frequencyInterval'] as int).input(),
      frequencyUnit: (map['frequencyUnit'] as String).input(),
      keepAtLeastOneBackup: (map['keepAtLeastOneBackup'] as bool).input(),
      lastExecutionTime: (map['lastExecutionTime'] as String).input(),
      retentionPeriodInDays: (map['retentionPeriodInDays'] as int).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

