// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_association_rules_config_info_last_backup_error.dart';

class BackupPlanAssociationRulesConfigInfo {
  /// (Output)
  /// google.rpc.Status object to store the last backup error
  /// Structure is documented below.
  final pulumi.Input<List<BackupPlanAssociationRulesConfigInfoLastBackupError>?>? lastBackupErrors;
  /// (Output)
  /// State of last backup taken.
  final pulumi.Input<String?>? lastBackupState;
  /// (Output)
  /// The point in time when the last successful backup was captured from the source
  final pulumi.Input<String?>? lastSuccessfulBackupConsistencyTime;
  /// (Output)
  /// Backup Rule id fetched from backup plan.
  final pulumi.Input<String?>? ruleId;

  /// Creates a new [BackupPlanAssociationRulesConfigInfo].
  /// [lastBackupErrors] (Output)
  /// [lastBackupState] (Output)
  /// [lastSuccessfulBackupConsistencyTime] (Output)
  /// [ruleId] (Output)
  const BackupPlanAssociationRulesConfigInfo({
    this.lastBackupErrors,
    this.lastBackupState,
    this.lastSuccessfulBackupConsistencyTime,
    this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastBackupErrors': ?pulumi.Input.mapOptionalInputValue<List<BackupPlanAssociationRulesConfigInfoLastBackupError>, List<Map<String, dynamic>>>(lastBackupErrors, (value) => pulumi.Input.encodeList<BackupPlanAssociationRulesConfigInfoLastBackupError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastBackupState': ?lastBackupState,
      'lastSuccessfulBackupConsistencyTime': ?lastSuccessfulBackupConsistencyTime,
      'ruleId': ?ruleId,
    };
  }

  factory BackupPlanAssociationRulesConfigInfo.fromMap(Map<String, dynamic> map) {
    return BackupPlanAssociationRulesConfigInfo(
      lastBackupErrors: (() { final guardedValue = map['lastBackupErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackupPlanAssociationRulesConfigInfoLastBackupError>(guardedValue, (value) => BackupPlanAssociationRulesConfigInfoLastBackupError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastBackupState: (() { final guardedValue = map['lastBackupState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastSuccessfulBackupConsistencyTime: (() { final guardedValue = map['lastSuccessfulBackupConsistencyTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
