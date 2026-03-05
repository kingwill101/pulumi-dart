// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_database_threat_detection_policy_args_doc}
/// Arguments for getDatabaseThreatDetectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_get_database_threat_detection_policy_args_doc}
class GetDatabaseThreatDetectionPolicyArgs {
  /// The name of the database for which database Threat Detection policy is defined.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the security alert policy.
  final pulumi.Input<String> securityAlertPolicyName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetDatabaseThreatDetectionPolicyArgs].
  /// [databaseName] The name of the database for which database Threat Detection policy is defined.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [securityAlertPolicyName] The name of the security alert policy.
  /// [serverName] The name of the server.
  GetDatabaseThreatDetectionPolicyArgs({
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

  factory GetDatabaseThreatDetectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseThreatDetectionPolicyArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityAlertPolicyName: pulumi.Input.fromValue(map['securityAlertPolicyName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}

