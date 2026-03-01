// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerSecurityAlertPolicy resources.
class ServerSecurityAlertPolicyState {
  /// Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  final pulumi.Input<List<String>>? disabledAlerts;
  /// Are the alerts sent to the account administrators? Possible values are `true` or `false`. Defaults to `false`.
  final pulumi.Input<bool>? emailAccountAdmins;
  /// Specifies an array of email addresses to which the alert is sent.
  final pulumi.Input<List<String>>? emailAddresses;
  /// The name of the resource group that contains the MS SQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the number of days to keep the Threat Detection audit logs. Defaults to `0`.
  final pulumi.Input<int>? retentionDays;
  /// Specifies the name of the MS SQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverName;
  /// Specifies the state of the policy. Possible values are `Disabled` or `Enabled`.
  final pulumi.Input<String>? state;
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
  ServerSecurityAlertPolicyState({
    pulumi.Output<List<String>>? disabledAlerts,
    pulumi.Output<bool>? emailAccountAdmins,
    pulumi.Output<List<String>>? emailAddresses,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? retentionDays,
    pulumi.Output<String>? serverName,
    pulumi.Output<String>? state,
    pulumi.Output<String>? storageAccountAccessKey,
    pulumi.Output<String>? storageEndpoint,
  }) :
      disabledAlerts = pulumi.Input.asOptionalInput<List<String>>(disabledAlerts),
      emailAccountAdmins = pulumi.Input.asOptionalInput<bool>(emailAccountAdmins),
      emailAddresses = pulumi.Input.asOptionalInput<List<String>>(emailAddresses),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      state = pulumi.Input.asOptionalInput<String>(state),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageEndpoint = pulumi.Input.asOptionalInput<String>(storageEndpoint);

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
      disabledAlerts: map['disabledAlerts'] == null ? null : pulumi.Output.create<List<String>>((map['disabledAlerts'] as List).cast<String>()),
      emailAccountAdmins: map['emailAccountAdmins'] == null ? null : pulumi.Output.create<bool>(map['emailAccountAdmins'] as bool),
      emailAddresses: map['emailAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['emailAddresses'] as List).cast<String>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountAccessKey'] as String),
      storageEndpoint: map['storageEndpoint'] == null ? null : pulumi.Output.create<String>(map['storageEndpoint'] as String),
    );
  }
}

