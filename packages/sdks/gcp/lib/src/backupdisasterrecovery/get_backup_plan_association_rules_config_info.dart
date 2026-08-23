// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_association_rules_config_info_last_backup_error.dart';

class GetBackupPlanAssociationRulesConfigInfo {
  /// google.rpc.Status object to store the last backup error
  final pulumi.Input<List<GetBackupPlanAssociationRulesConfigInfoLastBackupError>> lastBackupErrors;
  /// State of last backup taken.
  final pulumi.Input<String> lastBackupState;
  /// The point in time when the last successful backup was captured from the source
  final pulumi.Input<String> lastSuccessfulBackupConsistencyTime;
  /// Backup Rule id fetched from backup plan.
  final pulumi.Input<String> ruleId;

  /// Creates a new [GetBackupPlanAssociationRulesConfigInfo].
  /// [lastBackupErrors] google.rpc.Status object to store the last backup error
  /// [lastBackupState] State of last backup taken.
  /// [lastSuccessfulBackupConsistencyTime] The point in time when the last successful backup was captured from the source
  /// [ruleId] Backup Rule id fetched from backup plan.
  const GetBackupPlanAssociationRulesConfigInfo({
    required this.lastBackupErrors,
    required this.lastBackupState,
    required this.lastSuccessfulBackupConsistencyTime,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastBackupErrors': pulumi.Input.mapInputValue<List<GetBackupPlanAssociationRulesConfigInfoLastBackupError>, List<Map<String, dynamic>>>(lastBackupErrors, (value) => pulumi.Input.encodeList<GetBackupPlanAssociationRulesConfigInfoLastBackupError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastBackupState': lastBackupState,
      'lastSuccessfulBackupConsistencyTime': lastSuccessfulBackupConsistencyTime,
      'ruleId': ruleId,
    };
  }

  factory GetBackupPlanAssociationRulesConfigInfo.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationRulesConfigInfo(
      lastBackupErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBackupPlanAssociationRulesConfigInfoLastBackupError>(map['lastBackupErrors']!, (value) => GetBackupPlanAssociationRulesConfigInfoLastBackupError.fromMap((value as Map).cast<String, dynamic>()))),
      lastBackupState: pulumi.Input.fromValue(map['lastBackupState'] as String),
      lastSuccessfulBackupConsistencyTime: pulumi.Input.fromValue(map['lastSuccessfulBackupConsistencyTime'] as String),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
    );
  }
}
