// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_backup_retention_policy.dart';
import 'configuration_backup_schedule_policy.dart';

class ConfigurationBackup {
  /// The retention range in days of the backup policy. Defaults to `5`.
  final int? instantRpRetentionRangeInDays;
  /// The name of the backup policy.
  final String? policyName;
  /// A `retention_policy` block as defined below.
  final ConfigurationBackupRetentionPolicy? retentionPolicy;
  /// A `schedule_policy` block as defined below.
  final ConfigurationBackupSchedulePolicy? schedulePolicy;
  /// The timezone of the backup policy. Defaults to `UTC`.
  final String? timeZone;

  /// Creates a new [ConfigurationBackup].
  /// [instantRpRetentionRangeInDays] The retention range in days of the backup policy. Defaults to `5`.
  /// [policyName] The name of the backup policy.
  /// [retentionPolicy] A `retention_policy` block as defined below.
  /// [schedulePolicy] A `schedule_policy` block as defined below.
  /// [timeZone] The timezone of the backup policy. Defaults to `UTC`.
  ConfigurationBackup({
    this.instantRpRetentionRangeInDays,
    this.policyName,
    this.retentionPolicy,
    this.schedulePolicy,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instantRpRetentionRangeInDays': ?instantRpRetentionRangeInDays,
      'policyName': ?policyName,
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
      'schedulePolicy': ?schedulePolicy == null ? null : schedulePolicy!.toMap(),
      'timeZone': ?timeZone,
    };
  }

  factory ConfigurationBackup.fromMap(Map<String, dynamic> map) {
    return ConfigurationBackup(
      instantRpRetentionRangeInDays: map['instantRpRetentionRangeInDays'] == null ? null : map['instantRpRetentionRangeInDays'] as int,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      retentionPolicy: map['retentionPolicy'] == null ? null : ConfigurationBackupRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedulePolicy: map['schedulePolicy'] == null ? null : ConfigurationBackupSchedulePolicy.fromMap((map['schedulePolicy'] as Map).cast<String, dynamic>()),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

