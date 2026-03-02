// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppServiceBackupSchedule {
  /// Sets how often the backup should be executed.
  final pulumi.Input<int> frequencyInterval;
  /// Sets the unit of time for how often the backup should be executed. Possible values are `Day` or `Hour`.
  final pulumi.Input<String> frequencyUnit;
  /// Should at least one backup always be kept in the Storage Account by the Retention Policy, regardless of how old it is?
  final pulumi.Input<bool>? keepAtLeastOneBackup;
  /// Specifies the number of days after which Backups should be deleted. Defaults to `30`.
  final pulumi.Input<int>? retentionPeriodInDays;
  /// Sets when the schedule should start working.
  final pulumi.Input<String>? startTime;

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
      frequencyInterval: (map['frequencyInterval'] as int).input(),
      frequencyUnit: (map['frequencyUnit'] as String).input(),
      keepAtLeastOneBackup: map['keepAtLeastOneBackup'] == null ? null : (map['keepAtLeastOneBackup']! as bool).input(),
      retentionPeriodInDays: map['retentionPeriodInDays'] == null ? null : (map['retentionPeriodInDays']! as int).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
    );
  }
}

