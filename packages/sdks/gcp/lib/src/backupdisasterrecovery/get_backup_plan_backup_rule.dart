// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_backup_rule_standard_schedule.dart';

class GetBackupPlanBackupRule {
  /// Configures the duration for which backup data will be kept. The value should be greater than or equal to minimum enforced retention of the backup vault.
  final pulumi.Input<int> backupRetentionDays;
  /// The unique ID of this 'BackupRule'. The 'rule_id' is unique per 'BackupPlan'.
  final pulumi.Input<String> ruleId;
  /// StandardSchedule defines a schedule that runs within the confines of a defined window of days.
  final pulumi.Input<List<GetBackupPlanBackupRuleStandardSchedule>> standardSchedules;

  /// Creates a new [GetBackupPlanBackupRule].
  /// [backupRetentionDays] Configures the duration for which backup data will be kept. The value should be greater than or equal to minimum enforced retention of the backup vault.
  /// [ruleId] The unique ID of this 'BackupRule'. The 'rule_id' is unique per 'BackupPlan'.
  /// [standardSchedules] StandardSchedule defines a schedule that runs within the confines of a defined window of days.
  GetBackupPlanBackupRule({
    required this.backupRetentionDays,
    required this.ruleId,
    required this.standardSchedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionDays': backupRetentionDays,
      'ruleId': ruleId,
      'standardSchedules': pulumi.Input.mapInputValue<List<GetBackupPlanBackupRuleStandardSchedule>, List<Map<String, dynamic>>>(standardSchedules, (value) => pulumi.Input.encodeList<GetBackupPlanBackupRuleStandardSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBackupPlanBackupRule.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanBackupRule(
      backupRetentionDays: pulumi.Input.fromValue(map['backupRetentionDays'] as int),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
      standardSchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBackupPlanBackupRuleStandardSchedule>(map['standardSchedules']!, (value) => GetBackupPlanBackupRuleStandardSchedule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

