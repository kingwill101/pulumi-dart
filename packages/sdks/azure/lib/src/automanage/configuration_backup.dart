// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_backup_retention_policy.dart';
import 'configuration_backup_schedule_policy.dart';

class ConfigurationBackup {
  /// The retention range in days of the backup policy. Defaults to `5`.
  final pulumi.Input<int>? instantRpRetentionRangeInDays;

  /// The name of the backup policy.
  final pulumi.Input<String>? policyName;

  /// A `retention_policy` block as defined below.
  final pulumi.Input<ConfigurationBackupRetentionPolicy>? retentionPolicy;

  /// A `schedule_policy` block as defined below.
  final pulumi.Input<ConfigurationBackupSchedulePolicy>? schedulePolicy;

  /// The timezone of the backup policy. Defaults to `UTC`.
  final pulumi.Input<String>? timeZone;

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
      'retentionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigurationBackupRetentionPolicy,
            Map<String, dynamic>
          >(retentionPolicy, (value) => value.toMap()),
      'schedulePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigurationBackupSchedulePolicy,
            Map<String, dynamic>
          >(schedulePolicy, (value) => value.toMap()),
      'timeZone': ?timeZone,
    };
  }

  factory ConfigurationBackup.fromMap(Map<String, dynamic> map) {
    return ConfigurationBackup(
      instantRpRetentionRangeInDays: (() {
        final guardedValue = map['instantRpRetentionRangeInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      policyName: (() {
        final guardedValue = map['policyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionPolicy: (() {
        final guardedValue = map['retentionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigurationBackupRetentionPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      schedulePolicy: (() {
        final guardedValue = map['schedulePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigurationBackupSchedulePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
