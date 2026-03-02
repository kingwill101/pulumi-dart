// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_alerts_policy_state.dart';

/// {@template pulumi_sql_database_security_alert_policy_args_doc}
/// The set of arguments for DatabaseSecurityAlertPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_database_security_alert_policy_args_doc}
class DatabaseSecurityAlertPolicyArgs {
  /// The name of the  database for which the security alert policy is defined.
  final pulumi.Input<String> databaseName;
  /// Specifies an array of alerts that are disabled. Allowed values are: Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly, Data_Exfiltration, Unsafe_Action, Brute_Force
  final pulumi.Input<List<String>>? disabledAlerts;
  /// Specifies that the alert is sent to the account administrators.
  final pulumi.Input<bool>? emailAccountAdmins;
  /// Specifies an array of e-mail addresses to which the alert is sent.
  final pulumi.Input<List<String>>? emailAddresses;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the number of days to keep in the Threat Detection audit logs.
  final pulumi.Input<int>? retentionDays;
  /// The name of the security alert policy.
  final pulumi.Input<String>? securityAlertPolicyName;
  /// The name of the  server.
  final pulumi.Input<String> serverName;
  /// Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific database.
  final pulumi.Input<SecurityAlertsPolicyState> state;
  /// Specifies the identifier key of the Threat Detection audit storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [DatabaseSecurityAlertPolicyArgs].
  /// [databaseName] The name of the  database for which the security alert policy is defined.
  /// [disabledAlerts] Specifies an array of alerts that are disabled. Allowed values are: Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly, Data_Exfiltration, Unsafe_Action, Brute_Force
  /// [emailAccountAdmins] Specifies that the alert is sent to the account administrators.
  /// [emailAddresses] Specifies an array of e-mail addresses to which the alert is sent.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [retentionDays] Specifies the number of days to keep in the Threat Detection audit logs.
  /// [securityAlertPolicyName] The name of the security alert policy.
  /// [serverName] The name of the  server.
  /// [state] Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific database.
  /// [storageAccountAccessKey] Specifies the identifier key of the Threat Detection audit storage account.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs.
  DatabaseSecurityAlertPolicyArgs({
    required this.databaseName,
    this.disabledAlerts,
    this.emailAccountAdmins,
    this.emailAddresses,
    required this.resourceGroupName,
    this.retentionDays,
    this.securityAlertPolicyName,
    required this.serverName,
    required this.state,
    this.storageAccountAccessKey,
    this.storageEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdmins': ?emailAccountAdmins,
      'emailAddresses': ?emailAddresses,
      'resourceGroupName': resourceGroupName,
      'retentionDays': ?retentionDays,
      'securityAlertPolicyName': ?securityAlertPolicyName,
      'serverName': serverName,
      'state': pulumi.Input.mapInputValue<SecurityAlertsPolicyState, String>(state, (value) => value.value),
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory DatabaseSecurityAlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseSecurityAlertPolicyArgs(
      databaseName: (map['databaseName'] as String).input(),
      disabledAlerts: map['disabledAlerts'] == null ? null : ((map['disabledAlerts'] as List).cast<String>()).input(),
      emailAccountAdmins: map['emailAccountAdmins'] == null ? null : (map['emailAccountAdmins'] as bool).input(),
      emailAddresses: map['emailAddresses'] == null ? null : ((map['emailAddresses'] as List).cast<String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      retentionDays: map['retentionDays'] == null ? null : (map['retentionDays'] as int).input(),
      securityAlertPolicyName: map['securityAlertPolicyName'] == null ? null : (map['securityAlertPolicyName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      state: (SecurityAlertsPolicyState.fromValue(map['state'] as String)).input(),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : (map['storageAccountAccessKey'] as String).input(),
      storageEndpoint: map['storageEndpoint'] == null ? null : (map['storageEndpoint'] as String).input(),
    );
  }
}

