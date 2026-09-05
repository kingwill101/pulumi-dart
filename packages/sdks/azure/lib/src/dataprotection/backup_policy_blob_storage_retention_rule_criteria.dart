// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPolicyBlobStorageRetentionRuleCriteria {
  /// Possible values are `AllBackup`, `FirstOfDay`, `FirstOfWeek`, `FirstOfMonth` and `FirstOfYear`. These values mean the first successful backup of the day/week/month/year. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<String?>? absoluteCriteria;
  /// Must be between `0` and `28`. `0` for last day within the month. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<List<int>?>? daysOfMonths;
  /// Possible values are `Monday`, `Tuesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<List<String>?>? daysOfWeeks;
  /// Possible values are `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November` and `December`. Changing this forces a new Backup Policy Blob Storage to be created. When this property is specified, exactly one of the following must also be set: `daysOfMonth`, `daysOfWeek`
  final pulumi.Input<List<String>?>? monthsOfYears;
  /// Specifies a list of backup times for backup in the `RFC3339` format. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<List<String>?>? scheduledBackupTimes;
  /// Possible values are `First`, `Second`, `Third`, `Fourth` and `Last`. Changing this forces a new Backup Policy Blob Storage to be created. When this property is specified, exactly one of the following must also be set: `daysOfMonth`, `daysOfWeek`
  ///
  /// &gt; **Note:** When not using `absoluteCriteria`, you must use exactly one of `daysOfMonth` or `daysOfWeek`. Regarding the remaining two properties, `weeksOfMonth` and `monthsOfYear`, you may use either, both, or neither. If you would like to set multiple intervals, you may do so by using multiple `retentionRule` blocks.
  final pulumi.Input<List<String>?>? weeksOfMonths;

  /// Creates a new [BackupPolicyBlobStorageRetentionRuleCriteria].
  /// [absoluteCriteria] Possible values are `AllBackup`, `FirstOfDay`, `FirstOfWeek`, `FirstOfMonth` and `FirstOfYear`. These values mean the first successful backup of the day/week/month/year. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [daysOfMonths] Must be between `0` and `28`. `0` for last day within the month. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [daysOfWeeks] Possible values are `Monday`, `Tuesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [monthsOfYears] Possible values are `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November` and `December`. Changing this forces a new Backup Policy Blob Storage to be created. When this property is specified, exactly one of the following must also be set: `daysOfMonth`, `daysOfWeek`
  /// [scheduledBackupTimes] Specifies a list of backup times for backup in the `RFC3339` format. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [weeksOfMonths] Possible values are `First`, `Second`, `Third`, `Fourth` and `Last`. Changing this forces a new Backup Policy Blob Storage to be created. When this property is specified, exactly one of the following must also be set: `daysOfMonth`, `daysOfWeek`
  const BackupPolicyBlobStorageRetentionRuleCriteria({
    this.absoluteCriteria,
    this.daysOfMonths,
    this.daysOfWeeks,
    this.monthsOfYears,
    this.scheduledBackupTimes,
    this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absoluteCriteria': ?absoluteCriteria,
      'daysOfMonths': ?daysOfMonths,
      'daysOfWeeks': ?daysOfWeeks,
      'monthsOfYears': ?monthsOfYears,
      'scheduledBackupTimes': ?scheduledBackupTimes,
      'weeksOfMonths': ?weeksOfMonths,
    };
  }

  factory BackupPolicyBlobStorageRetentionRuleCriteria.fromMap(Map<String, dynamic> map) {
    return BackupPolicyBlobStorageRetentionRuleCriteria(
      absoluteCriteria: (() { final guardedValue = map['absoluteCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      daysOfMonths: (() { final guardedValue = map['daysOfMonths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      daysOfWeeks: (() { final guardedValue = map['daysOfWeeks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      monthsOfYears: (() { final guardedValue = map['monthsOfYears']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scheduledBackupTimes: (() { final guardedValue = map['scheduledBackupTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      weeksOfMonths: (() { final guardedValue = map['weeksOfMonths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
