// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_postgresql_retention_rule.dart';

/// Input properties used for looking up and filtering BackupPolicyPostgresql resources.
class BackupPolicyPostgresqlState {
  /// Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<List<String>?>? backupRepeatingTimeIntervals;
  /// The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<String?>? defaultRetentionDuration;
  /// The name which should be used for this Backup Policy PostgreSQL. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// One or more `retentionRule` blocks as defined below. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<List<BackupPolicyPostgresqlRetentionRule>?>? retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<String?>? timeZone;
  /// The name of the Backup Vault where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<String?>? vaultName;

  /// Creates a new [BackupPolicyPostgresqlState].
  /// [backupRepeatingTimeIntervals] Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [defaultRetentionDuration] The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [name] The name which should be used for this Backup Policy PostgreSQL. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [resourceGroupName] The name of the Resource Group where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [retentionRules] One or more `retentionRule` blocks as defined below. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [timeZone] Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [vaultName] The name of the Backup Vault where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created.
  const BackupPolicyPostgresqlState({
    this.backupRepeatingTimeIntervals,
    this.defaultRetentionDuration,
    this.name,
    this.resourceGroupName,
    this.retentionRules,
    this.timeZone,
    this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRepeatingTimeIntervals': ?backupRepeatingTimeIntervals,
      'defaultRetentionDuration': ?defaultRetentionDuration,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'retentionRules': ?pulumi.Input.mapOptionalInputValue<List<BackupPolicyPostgresqlRetentionRule>, List<Map<String, dynamic>>>(retentionRules, (value) => pulumi.Input.encodeList<BackupPolicyPostgresqlRetentionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
      'vaultName': ?vaultName,
    };
  }

  factory BackupPolicyPostgresqlState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyPostgresqlState(
      backupRepeatingTimeIntervals: (() { final guardedValue = map['backupRepeatingTimeIntervals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultRetentionDuration: (() { final guardedValue = map['defaultRetentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionRules: (() { final guardedValue = map['retentionRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackupPolicyPostgresqlRetentionRule>(guardedValue, (value) => BackupPolicyPostgresqlRetentionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultName: (() { final guardedValue = map['vaultName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
