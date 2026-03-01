// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_long_term_retention_policy_args_doc}
/// The set of arguments for LongTermRetentionPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_long_term_retention_policy_args_doc}
class LongTermRetentionPolicyArgs {
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

  /// Creates a new [LongTermRetentionPolicyArgs].
  /// [databaseName] The name of the database.
  /// [monthlyRetention] The monthly retention policy for an LTR backup in an ISO 8601 format.
  /// [policyName] The policy name. Should always be Default.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [weekOfYear] The week of year to take the yearly backup in an ISO 8601 format.
  /// [weeklyRetention] The weekly retention policy for an LTR backup in an ISO 8601 format.
  /// [yearlyRetention] The yearly retention policy for an LTR backup in an ISO 8601 format.
  LongTermRetentionPolicyArgs({
    required pulumi.Output<String> databaseName,
    pulumi.Output<String>? monthlyRetention,
    pulumi.Output<String>? policyName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    pulumi.Output<int>? weekOfYear,
    pulumi.Output<String>? weeklyRetention,
    pulumi.Output<String>? yearlyRetention,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      monthlyRetention = pulumi.Input.asOptionalInput<String>(monthlyRetention),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      weekOfYear = pulumi.Input.asOptionalInput<int>(weekOfYear),
      weeklyRetention = pulumi.Input.asOptionalInput<String>(weeklyRetention),
      yearlyRetention = pulumi.Input.asOptionalInput<String>(yearlyRetention);

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

  factory LongTermRetentionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LongTermRetentionPolicyArgs(
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      monthlyRetention: map['monthlyRetention'] == null ? null : pulumi.Output.create<String>(map['monthlyRetention'] as String),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      weekOfYear: map['weekOfYear'] == null ? null : pulumi.Output.create<int>(map['weekOfYear'] as int),
      weeklyRetention: map['weeklyRetention'] == null ? null : pulumi.Output.create<String>(map['weeklyRetention'] as String),
      yearlyRetention: map['yearlyRetention'] == null ? null : pulumi.Output.create<String>(map['yearlyRetention'] as String),
    );
  }
}

