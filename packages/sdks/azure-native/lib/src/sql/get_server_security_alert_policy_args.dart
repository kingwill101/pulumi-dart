// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_server_security_alert_policy_args_doc}
/// Arguments for getServerSecurityAlertPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_get_server_security_alert_policy_args_doc}
class GetServerSecurityAlertPolicyArgs {
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the security alert policy.
  final pulumi.Input<String> securityAlertPolicyName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetServerSecurityAlertPolicyArgs].
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [securityAlertPolicyName] The name of the security alert policy.
  /// [serverName] The name of the server.
  const GetServerSecurityAlertPolicyArgs({
    required this.resourceGroupName,
    required this.securityAlertPolicyName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'securityAlertPolicyName': securityAlertPolicyName,
      'serverName': serverName,
    };
  }

  factory GetServerSecurityAlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServerSecurityAlertPolicyArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityAlertPolicyName: pulumi.Input.fromValue(map['securityAlertPolicyName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
