// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPolicyKubernetesClusterRetentionRuleCriteria {
  /// Possible values are `AllBackup`, `FirstOfDay`, `FirstOfWeek`, `FirstOfMonth` and `FirstOfYear`. These values mean the first successful backup of the day/week/month/year. Changing this forces a new resource to be created.
  final pulumi.Input<String>? absoluteCriteria;
  /// Possible values are `Monday`, `Tuesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? daysOfWeeks;
  /// Possible values are `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November` and `December`. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? monthsOfYears;
  /// Specifies a list of backup times for backup in the `RFC3339` format. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? scheduledBackupTimes;
  /// Possible values are `First`, `Second`, `Third`, `Fourth` and `Last`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When not using `absolute_criteria`, you must use exactly one of `days_of_month` or `days_of_week`. Regarding the remaining two properties, `weeks_of_month` and `months_of_year`, you may use either, both, or neither. If you would like to set multiple intervals, you may do so by using multiple `retention_rule` blocks.
  final pulumi.Input<List<String>>? weeksOfMonths;

  /// Creates a new [BackupPolicyKubernetesClusterRetentionRuleCriteria].
  /// [absoluteCriteria] Possible values are `AllBackup`, `FirstOfDay`, `FirstOfWeek`, `FirstOfMonth` and `FirstOfYear`. These values mean the first successful backup of the day/week/month/year. Changing this forces a new resource to be created.
  /// [daysOfWeeks] Possible values are `Monday`, `Tuesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`. Changing this forces a new resource to be created.
  /// [monthsOfYears] Possible values are `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November` and `December`. Changing this forces a new resource to be created.
  /// [scheduledBackupTimes] Specifies a list of backup times for backup in the `RFC3339` format. Changing this forces a new resource to be created.
  /// [weeksOfMonths] Possible values are `First`, `Second`, `Third`, `Fourth` and `Last`. Changing this forces a new resource to be created.
  BackupPolicyKubernetesClusterRetentionRuleCriteria({
    this.absoluteCriteria,
    this.daysOfWeeks,
    this.monthsOfYears,
    this.scheduledBackupTimes,
    this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absoluteCriteria': ?absoluteCriteria,
      'daysOfWeeks': ?daysOfWeeks,
      'monthsOfYears': ?monthsOfYears,
      'scheduledBackupTimes': ?scheduledBackupTimes,
      'weeksOfMonths': ?weeksOfMonths,
    };
  }

  factory BackupPolicyKubernetesClusterRetentionRuleCriteria.fromMap(Map<String, dynamic> map) {
    return BackupPolicyKubernetesClusterRetentionRuleCriteria(
      absoluteCriteria: (() { final guardedValue = map['absoluteCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      daysOfWeeks: (() { final guardedValue = map['daysOfWeeks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      monthsOfYears: (() { final guardedValue = map['monthsOfYears']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scheduledBackupTimes: (() { final guardedValue = map['scheduledBackupTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      weeksOfMonths: (() { final guardedValue = map['weeksOfMonths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

