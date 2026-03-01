// ignore_for_file: unused_element, unnecessary_cast


class AppServiceBackupSchedule {
  /// Sets how often the backup should be executed.
  final int frequencyInterval;
  /// Sets the unit of time for how often the backup should be executed. Possible values are `Day` or `Hour`.
  final String frequencyUnit;
  /// Should at least one backup always be kept in the Storage Account by the Retention Policy, regardless of how old it is?
  final bool? keepAtLeastOneBackup;
  /// Specifies the number of days after which Backups should be deleted. Defaults to `30`.
  final int? retentionPeriodInDays;
  /// Sets when the schedule should start working.
  final String? startTime;

  /// Creates a new [AppServiceBackupSchedule].
  /// [frequencyInterval] Sets how often the backup should be executed.
  /// [frequencyUnit] Sets the unit of time for how often the backup should be executed. Possible values are `Day` or `Hour`.
  /// [keepAtLeastOneBackup] Should at least one backup always be kept in the Storage Account by the Retention Policy, regardless of how old it is?
  /// [retentionPeriodInDays] Specifies the number of days after which Backups should be deleted. Defaults to `30`.
  /// [startTime] Sets when the schedule should start working.
  AppServiceBackupSchedule({
    required this.frequencyInterval,
    required this.frequencyUnit,
    this.keepAtLeastOneBackup,
    this.retentionPeriodInDays,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequencyInterval': frequencyInterval,
      'frequencyUnit': frequencyUnit,
      'keepAtLeastOneBackup': ?keepAtLeastOneBackup,
      'retentionPeriodInDays': ?retentionPeriodInDays,
      'startTime': ?startTime,
    };
  }

  factory AppServiceBackupSchedule.fromMap(Map<String, dynamic> map) {
    return AppServiceBackupSchedule(
      frequencyInterval: map['frequencyInterval'] as int,
      frequencyUnit: map['frequencyUnit'] as String,
      keepAtLeastOneBackup: map['keepAtLeastOneBackup'] == null ? null : map['keepAtLeastOneBackup'] as bool,
      retentionPeriodInDays: map['retentionPeriodInDays'] == null ? null : map['retentionPeriodInDays'] as int,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

