// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_mysql_flexible_server_default_retention_rule.dart';
import 'backup_policy_mysql_flexible_server_retention_rule.dart';

/// {@template pulumi_dataprotection_backup_policy_mysql_flexible_server_backup_policy_mysql_flexible_server_args_doc}
/// The set of arguments for BackupPolicyMysqlFlexibleServer.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_policy_mysql_flexible_server_backup_policy_mysql_flexible_server_args_doc}
class BackupPolicyMysqlFlexibleServerArgs {
  /// Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval format. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> backupRepeatingTimeIntervals;
  /// A `defaultRetentionRule` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<BackupPolicyMysqlFlexibleServerDefaultRetentionRule> defaultRetentionRule;
  /// Specifies the name of the Backup Policy for the MySQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `retentionRule` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<BackupPolicyMysqlFlexibleServerRetentionRule>>? retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? timeZone;
  /// The ID of the Backup Vault where the Backup Policy MySQL Flexible Server should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> vaultId;

  /// Creates a new [BackupPolicyMysqlFlexibleServerArgs].
  /// [backupRepeatingTimeIntervals] Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval format. Changing this forces a new resource to be created.
  /// [defaultRetentionRule] A `defaultRetentionRule` block as defined below. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Backup Policy for the MySQL Flexible Server. Changing this forces a new resource to be created.
  /// [retentionRules] One or more `retentionRule` blocks as defined below. Changing this forces a new resource to be created.
  /// [timeZone] Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new resource to be created.
  /// [vaultId] The ID of the Backup Vault where the Backup Policy MySQL Flexible Server should exist. Changing this forces a new resource to be created.
  const BackupPolicyMysqlFlexibleServerArgs({
    required this.backupRepeatingTimeIntervals,
    required this.defaultRetentionRule,
    this.name,
    this.retentionRules,
    this.timeZone,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRepeatingTimeIntervals': backupRepeatingTimeIntervals,
      'defaultRetentionRule': pulumi.Input.mapInputValue<BackupPolicyMysqlFlexibleServerDefaultRetentionRule, Map<String, dynamic>>(defaultRetentionRule, (value) => value.toMap()),
      'name': ?name,
      'retentionRules': ?pulumi.Input.mapOptionalInputValue<List<BackupPolicyMysqlFlexibleServerRetentionRule>, List<Map<String, dynamic>>>(retentionRules, (value) => pulumi.Input.encodeList<BackupPolicyMysqlFlexibleServerRetentionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
      'vaultId': vaultId,
    };
  }

  factory BackupPolicyMysqlFlexibleServerArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyMysqlFlexibleServerArgs(
      backupRepeatingTimeIntervals: pulumi.Input.fromValue((map['backupRepeatingTimeIntervals'] as List).cast<String>()),
      defaultRetentionRule: pulumi.Input.fromValue(BackupPolicyMysqlFlexibleServerDefaultRetentionRule.fromMap((map['defaultRetentionRule']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionRules: (() { final guardedValue = map['retentionRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackupPolicyMysqlFlexibleServerRetentionRule>(guardedValue, (value) => BackupPolicyMysqlFlexibleServerRetentionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}
