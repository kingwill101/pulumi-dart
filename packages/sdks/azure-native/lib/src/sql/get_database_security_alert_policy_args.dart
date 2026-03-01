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
  GetDatabaseSecurityAlertPolicyArgs({
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> securityAlertPolicyName,
    required pulumi.Output<String> serverName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityAlertPolicyName = pulumi.Input.asInput<String>(securityAlertPolicyName),
      serverName = pulumi.Input.asInput<String>(serverName);

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
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securityAlertPolicyName: pulumi.Output.create<String>(map['securityAlertPolicyName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

