// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerSecurityAlertPolicy resources.
class ServerSecurityAlertPolicyState {
  /// Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  final pulumi.Input<List<String>?>? disabledAlerts;
  /// Are the alerts sent to the account administrators? Possible values are `true` or `false`. Defaults to `false`.
  final pulumi.Input<bool?>? emailAccountAdmins;
  /// Specifies an array of email addresses to which the alert is sent.
  final pulumi.Input<List<String>?>? emailAddresses;
  /// The name of the resource group that contains the MS SQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// Specifies the number of days to keep the Threat Detection audit logs. Defaults to `0`.
  final pulumi.Input<int?>? retentionDays;
  /// Specifies the name of the MS SQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? serverName;
  /// Specifies the state of the policy. Possible values are `Disabled` or `Enabled`.
  final pulumi.Input<String?>? state;
  /// Specifies the primary access key of the Threat Detection audit logs blob storage endpoint.
  ///
  /// &gt; **Note:** The `storageAccountAccessKey` only applies if the storage account is not behind a virtual network or a firewall.
  final pulumi.Input<String?>? storageAccountAccessKey;
  /// Specifies the blob storage endpoint that will hold all Threat Detection audit logs (e.g., `https://example.blob.core.windows.net`).
  ///
  /// &gt; **Note:** The `storageAccountAccessKey` field is required when the `storageEndpoint` field has been set.
  ///
  /// &gt; **Note:** Storage accounts configured with `sharedAccessKeyEnabled = false` cannot be used for the `storageEndpoint` field.
  final pulumi.Input<String?>? storageEndpoint;

  /// Creates a new [ServerSecurityAlertPolicyState].
  /// [disabledAlerts] Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  /// [emailAccountAdmins] Are the alerts sent to the account administrators? Possible values are `true` or `false`. Defaults to `false`.
  /// [emailAddresses] Specifies an array of email addresses to which the alert is sent.
  /// [resourceGroupName] The name of the resource group that contains the MS SQL Server. Changing this forces a new resource to be created.
  /// [retentionDays] Specifies the number of days to keep the Threat Detection audit logs. Defaults to `0`.
  /// [serverName] Specifies the name of the MS SQL Server. Changing this forces a new resource to be created.
  /// [state] Specifies the state of the policy. Possible values are `Disabled` or `Enabled`.
  /// [storageAccountAccessKey] Specifies the primary access key of the Threat Detection audit logs blob storage endpoint.
  /// [storageEndpoint] Specifies the blob storage endpoint that will hold all Threat Detection audit logs (e.g., `https://example.blob.core.windows.net`).
  const ServerSecurityAlertPolicyState({
    this.disabledAlerts,
    this.emailAccountAdmins,
    this.emailAddresses,
    this.resourceGroupName,
    this.retentionDays,
    this.serverName,
    this.state,
    this.storageAccountAccessKey,
    this.storageEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdmins': ?emailAccountAdmins,
      'emailAddresses': ?emailAddresses,
      'resourceGroupName': ?resourceGroupName,
      'retentionDays': ?retentionDays,
      'serverName': ?serverName,
      'state': ?state,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory ServerSecurityAlertPolicyState.fromMap(Map<String, dynamic> map) {
    return ServerSecurityAlertPolicyState(
      disabledAlerts: (() { final guardedValue = map['disabledAlerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      emailAccountAdmins: (() { final guardedValue = map['emailAccountAdmins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      emailAddresses: (() { final guardedValue = map['emailAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageEndpoint: (() { final guardedValue = map['storageEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
