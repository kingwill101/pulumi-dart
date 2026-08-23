// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_database_security_alert_policy_args_doc}
/// Arguments for getDatabaseSecurityAlertPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_get_database_security_alert_policy_args_doc}
class GetDatabaseSecurityAlertPolicyArgs {
  /// The name of the  database for which the security alert policy is defined.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the security alert policy.
  final pulumi.Input<String> securityAlertPolicyName;
  /// The name of the  server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetDatabaseSecurityAlertPolicyArgs].
  /// [databaseName] The name of the  database for which the security alert policy is defined.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [securityAlertPolicyName] The name of the security alert policy.
  /// [serverName] The name of the  server.
  const GetDatabaseSecurityAlertPolicyArgs({
    required this.databaseName,
    required this.resourceGroupName,
    required this.securityAlertPolicyName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'securityAlertPolicyName': securityAlertPolicyName,
      'serverName': serverName,
    };
  }

  factory GetDatabaseSecurityAlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseSecurityAlertPolicyArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityAlertPolicyName: pulumi.Input.fromValue(map['securityAlertPolicyName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
