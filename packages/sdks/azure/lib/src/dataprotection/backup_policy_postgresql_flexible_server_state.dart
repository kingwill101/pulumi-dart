// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_postgresql_flexible_server_default_retention_rule.dart';
import 'backup_policy_postgresql_flexible_server_retention_rule.dart';

/// Input properties used for looking up and filtering BackupPolicyPostgresqlFlexibleServer resources.
class BackupPolicyPostgresqlFlexibleServerState {
  /// Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval format. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? backupRepeatingTimeIntervals;
  /// A `default_retention_rule` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule>? defaultRetentionRule;
  /// Specifies the name of the Backup Policy for the PostgreSQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `retention_rule` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<BackupPolicyPostgresqlFlexibleServerRetentionRule>>? retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? timeZone;
  /// The ID of the Backup Vault where the Backup Policy PostgreSQL Flexible Server should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [BackupPolicyPostgresqlFlexibleServerState].
  /// [backupRepeatingTimeIntervals] Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval format. Changing this forces a new resource to be created.
  /// [defaultRetentionRule] A `default_retention_rule` block as defined below. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Backup Policy for the PostgreSQL Flexible Server. Changing this forces a new resource to be created.
  /// [retentionRules] One or more `retention_rule` blocks as defined below. Changing this forces a new resource to be created.
  /// [timeZone] Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new resource to be created.
  /// [vaultId] The ID of the Backup Vault where the Backup Policy PostgreSQL Flexible Server should exist. Changing this forces a new resource to be created.
  BackupPolicyPostgresqlFlexibleServerState({
    this.backupRepeatingTimeIntervals,
    this.defaultRetentionRule,
    this.name,
    this.retentionRules,
    this.timeZone,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRepeatingTimeIntervals': ?backupRepeatingTimeIntervals,
      'defaultRetentionRule': ?pulumi.Input.mapOptionalInputValue<BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule, Map<String, dynamic>>(defaultRetentionRule, (value) => value.toMap()),
      'name': ?name,
      'retentionRules': ?pulumi.Input.mapOptionalInputValue<List<BackupPolicyPostgresqlFlexibleServerRetentionRule>, List<Map<String, dynamic>>>(retentionRules, (value) => pulumi.Input.encodeList<BackupPolicyPostgresqlFlexibleServerRetentionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
      'vaultId': ?vaultId,
    };
  }

  factory BackupPolicyPostgresqlFlexibleServerState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyPostgresqlFlexibleServerState(
      backupRepeatingTimeIntervals: map['backupRepeatingTimeIntervals'] == null ? null : ((map['backupRepeatingTimeIntervals'] as List).cast<String>()).input(),
      defaultRetentionRule: map['defaultRetentionRule'] == null ? null : (BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule.fromMap((map['defaultRetentionRule'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      retentionRules: map['retentionRules'] == null ? null : (pulumi.Input.decodeList<BackupPolicyPostgresqlFlexibleServerRetentionRule>(map['retentionRules'], (value) => BackupPolicyPostgresqlFlexibleServerRetentionRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      vaultId: map['vaultId'] == null ? null : (map['vaultId'] as String).input(),
    );
  }
}

