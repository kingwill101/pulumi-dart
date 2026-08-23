// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_postgresql_retention_rule.dart';

/// {@template pulumi_dataprotection_backup_policy_postgresql_backup_policy_postgresql_args_doc}
/// The set of arguments for BackupPolicyPostgresql.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_policy_postgresql_backup_policy_postgresql_args_doc}
class BackupPolicyPostgresqlArgs {
  /// Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<List<String>> backupRepeatingTimeIntervals;
  /// The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<String> defaultRetentionDuration;
  /// The name which should be used for this Backup Policy PostgreSQL. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<String> resourceGroupName;
  /// One or more `retentionRule` blocks as defined below. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<List<BackupPolicyPostgresqlRetentionRule>>? retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<String>? timeZone;
  /// The name of the Backup Vault where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<String> vaultName;

  /// Creates a new [BackupPolicyPostgresqlArgs].
  /// [backupRepeatingTimeIntervals] Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [defaultRetentionDuration] The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [name] The name which should be used for this Backup Policy PostgreSQL. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [resourceGroupName] The name of the Resource Group where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [retentionRules] One or more `retentionRule` blocks as defined below. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [timeZone] Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [vaultName] The name of the Backup Vault where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created.
  const BackupPolicyPostgresqlArgs({
    required this.backupRepeatingTimeIntervals,
    required this.defaultRetentionDuration,
    this.name,
    required this.resourceGroupName,
    this.retentionRules,
    this.timeZone,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRepeatingTimeIntervals': backupRepeatingTimeIntervals,
      'defaultRetentionDuration': defaultRetentionDuration,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'retentionRules': ?pulumi.Input.mapOptionalInputValue<List<BackupPolicyPostgresqlRetentionRule>, List<Map<String, dynamic>>>(retentionRules, (value) => pulumi.Input.encodeList<BackupPolicyPostgresqlRetentionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
      'vaultName': vaultName,
    };
  }

  factory BackupPolicyPostgresqlArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyPostgresqlArgs(
      backupRepeatingTimeIntervals: pulumi.Input.fromValue((map['backupRepeatingTimeIntervals'] as List).cast<String>()),
      defaultRetentionDuration: pulumi.Input.fromValue(map['defaultRetentionDuration'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      retentionRules: (() { final guardedValue = map['retentionRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackupPolicyPostgresqlRetentionRule>(guardedValue, (value) => BackupPolicyPostgresqlRetentionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}
