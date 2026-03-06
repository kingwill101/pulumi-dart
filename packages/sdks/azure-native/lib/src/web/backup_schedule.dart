// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frequency_unit.dart';

/// Description of a backup schedule. Describes how often should be the backup performed and what should be the retention policy.
class BackupSchedule {
  /// How often the backup should be executed (e.g. for weekly backup, this should be set to 7 and FrequencyUnit should be set to Day)
  final pulumi.Input<int> frequencyInterval;
  /// The unit of time for how often the backup should be executed (e.g. for weekly backup, this should be set to Day and FrequencyInterval should be set to 7)
  final pulumi.Input<FrequencyUnit> frequencyUnit;
  /// True if the retention policy should always keep at least one backup in the storage account, regardless how old it is; false otherwise.
  final pulumi.Input<bool> keepAtLeastOneBackup;
  /// After how many days backups should be deleted.
  final pulumi.Input<int> retentionPeriodInDays;
  /// When the schedule should start working.
  final pulumi.Input<String>? startTime;

  /// Creates a new [BackupSchedule].
  /// [frequencyInterval] How often the backup should be executed (e.g. for weekly backup, this should be set to 7 and FrequencyUnit should be set to Day)
  /// [frequencyUnit] The unit of time for how often the backup should be executed (e.g. for weekly backup, this should be set to Day and FrequencyInterval should be set to 7)
  /// [keepAtLeastOneBackup] True if the retention policy should always keep at least one backup in the storage account, regardless how old it is; false otherwise.
  /// [retentionPeriodInDays] After how many days backups should be deleted.
  /// [startTime] When the schedule should start working.
  const BackupSchedule({
    required this.frequencyInterval,
    required this.frequencyUnit,
    required this.keepAtLeastOneBackup,
    required this.retentionPeriodInDays,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequencyInterval': frequencyInterval,
      'frequencyUnit': pulumi.Input.mapInputValue<FrequencyUnit, String>(frequencyUnit, (value) => value.wireValue),
      'keepAtLeastOneBackup': keepAtLeastOneBackup,
      'retentionPeriodInDays': retentionPeriodInDays,
      'startTime': ?startTime,
    };
  }

  factory BackupSchedule.fromMap(Map<String, dynamic> map) {
    return BackupSchedule(
      frequencyInterval: pulumi.Input.fromValue(map['frequencyInterval'] as int),
      frequencyUnit: pulumi.Input.fromValue(FrequencyUnit.fromValue(map['frequencyUnit']! as String)),
      keepAtLeastOneBackup: pulumi.Input.fromValue(map['keepAtLeastOneBackup'] as bool),
      retentionPeriodInDays: pulumi.Input.fromValue(map['retentionPeriodInDays'] as int),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

