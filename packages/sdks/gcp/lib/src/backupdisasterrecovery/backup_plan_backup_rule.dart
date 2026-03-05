// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_backup_rule_standard_schedule.dart';

class BackupPlanBackupRule {
  /// Configures the duration for which backup data will be kept. The value should be greater than or equal to minimum enforced retention of the backup vault.
  final pulumi.Input<int> backupRetentionDays;
  /// The unique ID of this `BackupRule`. The `rule_id` is unique per `BackupPlan`.
  final pulumi.Input<String> ruleId;
  /// StandardSchedule defines a schedule that runs within the confines of a defined window of days.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanBackupRuleStandardSchedule> standardSchedule;

  /// Creates a new [BackupPlanBackupRule].
  /// [backupRetentionDays] Configures the duration for which backup data will be kept. The value should be greater than or equal to minimum enforced retention of the backup vault.
  /// [ruleId] The unique ID of this `BackupRule`. The `rule_id` is unique per `BackupPlan`.
  /// [standardSchedule] StandardSchedule defines a schedule that runs within the confines of a defined window of days.
  BackupPlanBackupRule({
    required this.backupRetentionDays,
    required this.ruleId,
    required this.standardSchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionDays': backupRetentionDays,
      'ruleId': ruleId,
      'standardSchedule': pulumi.Input.mapInputValue<BackupPlanBackupRuleStandardSchedule, Map<String, dynamic>>(standardSchedule, (value) => value.toMap()),
    };
  }

  factory BackupPlanBackupRule.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupRule(
      backupRetentionDays: pulumi.Input.fromValue(map['backupRetentionDays'] as int),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
      standardSchedule: pulumi.Input.fromValue(BackupPlanBackupRuleStandardSchedule.fromMap((map['standardSchedule']! as Map).cast<String, dynamic>())),
    );
  }
}

