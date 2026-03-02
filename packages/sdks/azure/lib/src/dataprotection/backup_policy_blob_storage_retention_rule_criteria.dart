// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPolicyBlobStorageRetentionRuleCriteria {
  /// Possible values are `AllBackup`, `FirstOfDay`, `FirstOfWeek`, `FirstOfMonth` and `FirstOfYear`. These values mean the first successful backup of the day/week/month/year. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<String>? absoluteCriteria;
  /// Must be between `0` and `28`. `0` for last day within the month. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<List<int>>? daysOfMonths;
  /// Possible values are `Monday`, `Tuesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<List<String>>? daysOfWeeks;
  /// Possible values are `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November` and `December`. Changing this forces a new Backup Policy Blob Storage to be created. When this property is specified, exactly one of the following must also be set: `days_of_month`, `days_of_week`
  final pulumi.Input<List<String>>? monthsOfYears;
  /// Specifies a list of backup times for backup in the `RFC3339` format. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<List<String>>? scheduledBackupTimes;
  /// Possible values are `First`, `Second`, `Third`, `Fourth` and `Last`. Changing this forces a new Backup Policy Blob Storage to be created. When this property is specified, exactly one of the following must also be set: `days_of_month`, `days_of_week`
  ///
  /// > **Note:** When not using `absolute_criteria`, you must use exactly one of `days_of_month` or `days_of_week`. Regarding the remaining two properties, `weeks_of_month` and `months_of_year`, you may use either, both, or neither. If you would like to set multiple intervals, you may do so by using multiple `retention_rule` blocks.
  final pulumi.Input<List<String>>? weeksOfMonths;

  /// Creates a new [BackupPolicyBlobStorageRetentionRuleCriteria].
  /// [absoluteCriteria] Possible values are `AllBackup`, `FirstOfDay`, `FirstOfWeek`, `FirstOfMonth` and `FirstOfYear`. These values mean the first successful backup of the day/week/month/year. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [daysOfMonths] Must be between `0` and `28`. `0` for last day within the month. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [daysOfWeeks] Possible values are `Monday`, `Tuesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [monthsOfYears] Possible values are `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November` and `December`. Changing this forces a new Backup Policy Blob Storage to be created. When this property is specified, exactly one of the following must also be set: `days_of_month`, `days_of_week`
  /// [scheduledBackupTimes] Specifies a list of backup times for backup in the `RFC3339` format. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [weeksOfMonths] Possible values are `First`, `Second`, `Third`, `Fourth` and `Last`. Changing this forces a new Backup Policy Blob Storage to be created. When this property is specified, exactly one of the following must also be set: `days_of_month`, `days_of_week`
  BackupPolicyBlobStorageRetentionRuleCriteria({
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
      absoluteCriteria: map['absoluteCriteria'] == null ? null : (map['absoluteCriteria'] as String).input(),
      daysOfMonths: map['daysOfMonths'] == null ? null : ((map['daysOfMonths'] as List).cast<int>()).input(),
      daysOfWeeks: map['daysOfWeeks'] == null ? null : ((map['daysOfWeeks'] as List).cast<String>()).input(),
      monthsOfYears: map['monthsOfYears'] == null ? null : ((map['monthsOfYears'] as List).cast<String>()).input(),
      scheduledBackupTimes: map['scheduledBackupTimes'] == null ? null : ((map['scheduledBackupTimes'] as List).cast<String>()).input(),
      weeksOfMonths: map['weeksOfMonths'] == null ? null : ((map['weeksOfMonths'] as List).cast<String>()).input(),
    );
  }
}

