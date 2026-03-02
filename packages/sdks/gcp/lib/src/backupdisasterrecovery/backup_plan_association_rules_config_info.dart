// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_association_rules_config_info_last_backup_error.dart';

class BackupPlanAssociationRulesConfigInfo {
  /// (Output)
  /// google.rpc.Status object to store the last backup error
  /// Structure is documented below.
  final pulumi.Input<List<BackupPlanAssociationRulesConfigInfoLastBackupError>>? lastBackupErrors;
  /// (Output)
  /// State of last backup taken.
  final pulumi.Input<String>? lastBackupState;
  /// (Output)
  /// Backup Rule id fetched from backup plan.
  final pulumi.Input<String>? ruleId;

  /// Creates a new [BackupPlanAssociationRulesConfigInfo].
  /// [lastBackupErrors] (Output)
  /// [lastBackupState] (Output)
  /// [ruleId] (Output)
  BackupPlanAssociationRulesConfigInfo({
    this.lastBackupErrors,
    this.lastBackupState,
    this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastBackupErrors': ?pulumi.Input.mapOptionalInputValue<List<BackupPlanAssociationRulesConfigInfoLastBackupError>, List<Map<String, dynamic>>>(lastBackupErrors, (value) => pulumi.Input.encodeList<BackupPlanAssociationRulesConfigInfoLastBackupError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastBackupState': ?lastBackupState,
      'ruleId': ?ruleId,
    };
  }

  factory BackupPlanAssociationRulesConfigInfo.fromMap(Map<String, dynamic> map) {
    return BackupPlanAssociationRulesConfigInfo(
      lastBackupErrors: map['lastBackupErrors'] == null ? null : (pulumi.Input.decodeList<BackupPlanAssociationRulesConfigInfoLastBackupError>(map['lastBackupErrors']!, (value) => BackupPlanAssociationRulesConfigInfoLastBackupError.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastBackupState: map['lastBackupState'] == null ? null : (map['lastBackupState']! as String).input(),
      ruleId: map['ruleId'] == null ? null : (map['ruleId']! as String).input(),
    );
  }
}

