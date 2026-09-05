// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPolicyDataLakeStorageRetentionRule {
  /// Specifies the absolute criteria for the retention rule. Possible values include `AllBackup`, `FirstOfDay`, `FirstOfWeek`, `FirstOfMonth`, and `FirstOfYear`. These values mean the first successful backup of the day/week/month/year. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? absoluteCriteria;
  /// Specifies a list of days of the week on which the retention rule applies. Possible values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, and `Sunday`. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>?>? daysOfWeeks;
  /// The retention duration up to which the backups are to be retained in the data stores. It should follow `ISO 8601` duration format. Changing this forces a new resource to be created.
  final pulumi.Input<String> duration;
  /// Specifies a list of months of the year on which the retention rule applies. Possible values include `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November`, and `December`. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>?>? monthsOfYears;
  /// Specifies the name of the retention rule. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// Specifies a list of backup times for backup in the `RFC3339` format. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** At least one of `absoluteCriteria` or `daysOfWeek` must be specified. `weeksOfMonth` and `monthsOfYear` are optional and can be supplied together. Multiple intervals may be set using multiple `retentionRule` blocks.
  final pulumi.Input<List<String>?>? scheduledBackupTimes;
  /// Specifies a list of weeks of the month on which the retention rule applies. Possible values include `First`, `Second`, `Third`, `Fourth`, and `Last`. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>?>? weeksOfMonths;

  /// Creates a new [BackupPolicyDataLakeStorageRetentionRule].
  /// [absoluteCriteria] Specifies the absolute criteria for the retention rule. Possible values include `AllBackup`, `FirstOfDay`, `FirstOfWeek`, `FirstOfMonth`, and `FirstOfYear`. These values mean the first successful backup of the day/week/month/year. Changing this forces a new resource to be created.
  /// [daysOfWeeks] Specifies a list of days of the week on which the retention rule applies. Possible values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, and `Sunday`. Changing this forces a new resource to be created.
  /// [duration] The retention duration up to which the backups are to be retained in the data stores. It should follow `ISO 8601` duration format. Changing this forces a new resource to be created.
  /// [monthsOfYears] Specifies a list of months of the year on which the retention rule applies. Possible values include `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November`, and `December`. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the retention rule. Changing this forces a new resource to be created.
  /// [scheduledBackupTimes] Specifies a list of backup times for backup in the `RFC3339` format. Changing this forces a new resource to be created.
  /// [weeksOfMonths] Specifies a list of weeks of the month on which the retention rule applies. Possible values include `First`, `Second`, `Third`, `Fourth`, and `Last`. Changing this forces a new resource to be created.
  const BackupPolicyDataLakeStorageRetentionRule({
    this.absoluteCriteria,
    this.daysOfWeeks,
    required this.duration,
    this.monthsOfYears,
    required this.name,
    this.scheduledBackupTimes,
    this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absoluteCriteria': ?absoluteCriteria,
      'daysOfWeeks': ?daysOfWeeks,
      'duration': duration,
      'monthsOfYears': ?monthsOfYears,
      'name': name,
      'scheduledBackupTimes': ?scheduledBackupTimes,
      'weeksOfMonths': ?weeksOfMonths,
    };
  }

  factory BackupPolicyDataLakeStorageRetentionRule.fromMap(Map<String, dynamic> map) {
    return BackupPolicyDataLakeStorageRetentionRule(
      absoluteCriteria: (() { final guardedValue = map['absoluteCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      daysOfWeeks: (() { final guardedValue = map['daysOfWeeks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      monthsOfYears: (() { final guardedValue = map['monthsOfYears']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      scheduledBackupTimes: (() { final guardedValue = map['scheduledBackupTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      weeksOfMonths: (() { final guardedValue = map['weeksOfMonths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
