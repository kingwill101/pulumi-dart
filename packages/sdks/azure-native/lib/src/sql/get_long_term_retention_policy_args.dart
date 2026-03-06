// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_long_term_retention_policy_args_doc}
/// Arguments for getLongTermRetentionPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_get_long_term_retention_policy_args_doc}
class GetLongTermRetentionPolicyArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The policy name. Should always be Default.
  final pulumi.Input<String> policyName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetLongTermRetentionPolicyArgs].
  /// [databaseName] The name of the database.
  /// [policyName] The policy name. Should always be Default.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  const GetLongTermRetentionPolicyArgs({
    required this.databaseName,
    required this.policyName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'policyName': policyName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetLongTermRetentionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLongTermRetentionPolicyArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}

