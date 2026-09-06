// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_backup_short_term_retention_policy_args_doc}
/// The set of arguments for BackupShortTermRetentionPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_backup_short_term_retention_policy_args_doc}
class BackupShortTermRetentionPolicyArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The differential backup interval in hours. This is how many interval hours between each differential backup will be supported. This is only applicable to live databases but not dropped databases.
  final pulumi.Input<int?>? diffBackupIntervalInHours;
  /// The policy name. Should always be "default".
  final pulumi.Input<String?>? policyName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  final pulumi.Input<int?>? retentionDays;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [BackupShortTermRetentionPolicyArgs].
  /// [databaseName] The name of the database.
  /// [diffBackupIntervalInHours] The differential backup interval in hours. This is how many interval hours between each differential backup will be supported. This is only applicable to live databases but not dropped databases.
  /// [policyName] The policy name. Should always be "default".
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [retentionDays] The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  /// [serverName] The name of the server.
  const BackupShortTermRetentionPolicyArgs({
    required this.databaseName,
    this.diffBackupIntervalInHours,
    this.policyName,
    required this.resourceGroupName,
    this.retentionDays,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'diffBackupIntervalInHours': ?diffBackupIntervalInHours,
      'policyName': ?policyName,
      'resourceGroupName': resourceGroupName,
      'retentionDays': ?retentionDays,
      'serverName': serverName,
    };
  }

  factory BackupShortTermRetentionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupShortTermRetentionPolicyArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      diffBackupIntervalInHours: (() { final guardedValue = map['diffBackupIntervalInHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
