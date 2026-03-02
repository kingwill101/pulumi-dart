// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_server_security_alert_policy_server_security_alert_policy_args_doc}
/// The set of arguments for ServerSecurityAlertPolicy.
/// {@endtemplate}
/// {@macro pulumi_mssql_server_security_alert_policy_server_security_alert_policy_args_doc}
class ServerSecurityAlertPolicyArgs {
  /// Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  final pulumi.Input<List<String>>? disabledAlerts;
  /// Are the alerts sent to the account administrators? Possible values are `true` or `false`. Defaults to `false`.
  final pulumi.Input<bool>? emailAccountAdmins;
  /// Specifies an array of email addresses to which the alert is sent.
  final pulumi.Input<List<String>>? emailAddresses;
  /// The name of the resource group that contains the MS SQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the number of days to keep the Threat Detection audit logs. Defaults to `0`.
  final pulumi.Input<int>? retentionDays;
  /// Specifies the name of the MS SQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverName;
  /// Specifies the state of the policy. Possible values are `Disabled` or `Enabled`.
  final pulumi.Input<String> state;
  /// Specifies the primary access key of the Threat Detection audit logs blob storage endpoint.
  ///
  /// > **Note:** The `storage_account_access_key` only applies if the storage account is not behind a virtual network or a firewall.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Specifies the blob storage endpoint that will hold all Threat Detection audit logs (e.g., `https://example.blob.core.windows.net`).
  ///
  /// > **Note:** The `storage_account_access_key` field is required when the `storage_endpoint` field has been set.
  ///
  /// > **Note:** Storage accounts configured with `shared_access_key_enabled = false` cannot be used for the `storage_endpoint` field.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [ServerSecurityAlertPolicyArgs].
  /// [disabledAlerts] Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  /// [emailAccountAdmins] Are the alerts sent to the account administrators? Possible values are `true` or `false`. Defaults to `false`.
  /// [emailAddresses] Specifies an array of email addresses to which the alert is sent.
  /// [resourceGroupName] The name of the resource group that contains the MS SQL Server. Changing this forces a new resource to be created.
  /// [retentionDays] Specifies the number of days to keep the Threat Detection audit logs. Defaults to `0`.
  /// [serverName] Specifies the name of the MS SQL Server. Changing this forces a new resource to be created.
  /// [state] Specifies the state of the policy. Possible values are `Disabled` or `Enabled`.
  /// [storageAccountAccessKey] Specifies the primary access key of the Threat Detection audit logs blob storage endpoint.
  /// [storageEndpoint] Specifies the blob storage endpoint that will hold all Threat Detection audit logs (e.g., `https://example.blob.core.windows.net`).
  ServerSecurityAlertPolicyArgs({
    this.disabledAlerts,
    this.emailAccountAdmins,
    this.emailAddresses,
    required this.resourceGroupName,
    this.retentionDays,
    required this.serverName,
    required this.state,
    this.storageAccountAccessKey,
    this.storageEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdmins': ?emailAccountAdmins,
      'emailAddresses': ?emailAddresses,
      'resourceGroupName': resourceGroupName,
      'retentionDays': ?retentionDays,
      'serverName': serverName,
      'state': state,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory ServerSecurityAlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerSecurityAlertPolicyArgs(
      disabledAlerts: map['disabledAlerts'] == null ? null : ((map['disabledAlerts']! as List).cast<String>()).input(),
      emailAccountAdmins: map['emailAccountAdmins'] == null ? null : (map['emailAccountAdmins']! as bool).input(),
      emailAddresses: map['emailAddresses'] == null ? null : ((map['emailAddresses']! as List).cast<String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      retentionDays: map['retentionDays'] == null ? null : (map['retentionDays']! as int).input(),
      serverName: (map['serverName'] as String).input(),
      state: (map['state'] as String).input(),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : (map['storageAccountAccessKey']! as String).input(),
      storageEndpoint: map['storageEndpoint'] == null ? null : (map['storageEndpoint']! as String).input(),
    );
  }
}

