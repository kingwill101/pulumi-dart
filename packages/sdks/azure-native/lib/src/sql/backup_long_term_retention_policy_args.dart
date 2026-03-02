// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_backup_long_term_retention_policy_args_doc}
/// The set of arguments for BackupLongTermRetentionPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_backup_long_term_retention_policy_args_doc}
class BackupLongTermRetentionPolicyArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The monthly retention policy for an LTR backup in an ISO 8601 format.
  final pulumi.Input<String>? monthlyRetention;
  /// The policy name. Should always be Default.
  final pulumi.Input<String>? policyName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The week of year to take the yearly backup in an ISO 8601 format.
  final pulumi.Input<int>? weekOfYear;
  /// The weekly retention policy for an LTR backup in an ISO 8601 format.
  final pulumi.Input<String>? weeklyRetention;
  /// The yearly retention policy for an LTR backup in an ISO 8601 format.
  final pulumi.Input<String>? yearlyRetention;

  /// Creates a new [BackupLongTermRetentionPolicyArgs].
  /// [databaseName] The name of the database.
  /// [monthlyRetention] The monthly retention policy for an LTR backup in an ISO 8601 format.
  /// [policyName] The policy name. Should always be Default.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [weekOfYear] The week of year to take the yearly backup in an ISO 8601 format.
  /// [weeklyRetention] The weekly retention policy for an LTR backup in an ISO 8601 format.
  /// [yearlyRetention] The yearly retention policy for an LTR backup in an ISO 8601 format.
  BackupLongTermRetentionPolicyArgs({
    required this.databaseName,
    this.monthlyRetention,
    this.policyName,
    required this.resourceGroupName,
    required this.serverName,
    this.weekOfYear,
    this.weeklyRetention,
    this.yearlyRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'monthlyRetention': ?monthlyRetention,
      'policyName': ?policyName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'weekOfYear': ?weekOfYear,
      'weeklyRetention': ?weeklyRetention,
      'yearlyRetention': ?yearlyRetention,
    };
  }

  factory BackupLongTermRetentionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupLongTermRetentionPolicyArgs(
      databaseName: (map['databaseName'] as String).input(),
      monthlyRetention: map['monthlyRetention'] == null ? null : (map['monthlyRetention']! as String).input(),
      policyName: map['policyName'] == null ? null : (map['policyName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      weekOfYear: map['weekOfYear'] == null ? null : (map['weekOfYear']! as int).input(),
      weeklyRetention: map['weeklyRetention'] == null ? null : (map['weeklyRetention']! as String).input(),
      yearlyRetention: map['yearlyRetention'] == null ? null : (map['yearlyRetention']! as String).input(),
    );
  }
}

