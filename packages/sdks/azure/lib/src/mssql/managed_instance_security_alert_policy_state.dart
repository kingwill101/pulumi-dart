// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedInstanceSecurityAlertPolicy resources.
class ManagedInstanceSecurityAlertPolicyState {
  /// Specifies an array of alerts that are disabled. Possible values are `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action` and `Brute_Force`.
  final pulumi.Input<List<String>>? disabledAlerts;
  /// Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`.
  final pulumi.Input<bool>? emailAccountAdminsEnabled;
  /// Specifies an array of email addresses to which the alert is sent.
  final pulumi.Input<List<String>>? emailAddresses;
  /// Specifies the state of the Security Alert Policy, whether it is enabled or disabled. Possible values are `true`, `false`.
  final pulumi.Input<bool>? enabled;
  /// Specifies the name of the MS SQL Managed Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedInstanceName;
  /// The name of the resource group that contains the MS SQL Managed Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`.
  final pulumi.Input<int>? retentionDays;
  /// Specifies the identifier key of the Threat Detection audit storage account. This is mandatory when you use `storage_endpoint` to specify a storage account blob endpoint.
  ///
  /// > **Note:** Please note that storage accounts configured with `shared_access_key_enabled = false` cannot be used to configure `azure.mssql.ManagedInstanceSecurityAlertPolicy` with `storage_endpoint` for now.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [ManagedInstanceSecurityAlertPolicyState].
  /// [disabledAlerts] Specifies an array of alerts that are disabled. Possible values are `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action` and `Brute_Force`.
  /// [emailAccountAdminsEnabled] Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`.
  /// [emailAddresses] Specifies an array of email addresses to which the alert is sent.
  /// [enabled] Specifies the state of the Security Alert Policy, whether it is enabled or disabled. Possible values are `true`, `false`.
  /// [managedInstanceName] Specifies the name of the MS SQL Managed Instance. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group that contains the MS SQL Managed Instance. Changing this forces a new resource to be created.
  /// [retentionDays] Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`.
  /// [storageAccountAccessKey] Specifies the identifier key of the Threat Detection audit storage account. This is mandatory when you use `storage_endpoint` to specify a storage account blob endpoint.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs.
  ManagedInstanceSecurityAlertPolicyState({
    pulumi.Output<List<String>>? disabledAlerts,
    pulumi.Output<bool>? emailAccountAdminsEnabled,
    pulumi.Output<List<String>>? emailAddresses,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? managedInstanceName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? retentionDays,
    pulumi.Output<String>? storageAccountAccessKey,
    pulumi.Output<String>? storageEndpoint,
  }) :
      disabledAlerts = pulumi.Input.asOptionalInput<List<String>>(disabledAlerts),
      emailAccountAdminsEnabled = pulumi.Input.asOptionalInput<bool>(emailAccountAdminsEnabled),
      emailAddresses = pulumi.Input.asOptionalInput<List<String>>(emailAddresses),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      managedInstanceName = pulumi.Input.asOptionalInput<String>(managedInstanceName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageEndpoint = pulumi.Input.asOptionalInput<String>(storageEndpoint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdminsEnabled': ?emailAccountAdminsEnabled,
      'emailAddresses': ?emailAddresses,
      'enabled': ?enabled,
      'managedInstanceName': ?managedInstanceName,
      'resourceGroupName': ?resourceGroupName,
      'retentionDays': ?retentionDays,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory ManagedInstanceSecurityAlertPolicyState.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceSecurityAlertPolicyState(
      disabledAlerts: map['disabledAlerts'] == null ? null : pulumi.Output.create<List<String>>((map['disabledAlerts'] as List).cast<String>()),
      emailAccountAdminsEnabled: map['emailAccountAdminsEnabled'] == null ? null : pulumi.Output.create<bool>(map['emailAccountAdminsEnabled'] as bool),
      emailAddresses: map['emailAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['emailAddresses'] as List).cast<String>()),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      managedInstanceName: map['managedInstanceName'] == null ? null : pulumi.Output.create<String>(map['managedInstanceName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountAccessKey'] as String),
      storageEndpoint: map['storageEndpoint'] == null ? null : pulumi.Output.create<String>(map['storageEndpoint'] as String),
    );
  }
}

