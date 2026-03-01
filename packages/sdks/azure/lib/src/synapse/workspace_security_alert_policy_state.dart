// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceSecurityAlertPolicy resources.
class WorkspaceSecurityAlertPolicyState {
  /// Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  final pulumi.Input<List<String>>? disabledAlerts;
  /// Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`.
  final pulumi.Input<bool>? emailAccountAdminsEnabled;
  /// Specifies an array of email addresses to which the alert is sent.
  final pulumi.Input<List<String>>? emailAddresses;
  /// Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific workspace. Possible values are `Disabled`, `Enabled` and `New`.
  final pulumi.Input<String>? policyState;
  /// Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`.
  final pulumi.Input<int>? retentionDays;
  /// Specifies the identifier key of the Threat Detection audit storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs.
  final pulumi.Input<String>? storageEndpoint;
  /// Specifies the ID of the Synapse Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? synapseWorkspaceId;

  /// Creates a new [WorkspaceSecurityAlertPolicyState].
  /// [disabledAlerts] Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  /// [emailAccountAdminsEnabled] Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`.
  /// [emailAddresses] Specifies an array of email addresses to which the alert is sent.
  /// [policyState] Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific workspace. Possible values are `Disabled`, `Enabled` and `New`.
  /// [retentionDays] Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`.
  /// [storageAccountAccessKey] Specifies the identifier key of the Threat Detection audit storage account.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs.
  /// [synapseWorkspaceId] Specifies the ID of the Synapse Workspace. Changing this forces a new resource to be created.
  WorkspaceSecurityAlertPolicyState({
    pulumi.Output<List<String>>? disabledAlerts,
    pulumi.Output<bool>? emailAccountAdminsEnabled,
    pulumi.Output<List<String>>? emailAddresses,
    pulumi.Output<String>? policyState,
    pulumi.Output<int>? retentionDays,
    pulumi.Output<String>? storageAccountAccessKey,
    pulumi.Output<String>? storageEndpoint,
    pulumi.Output<String>? synapseWorkspaceId,
  }) :
      disabledAlerts = pulumi.Input.asOptionalInput<List<String>>(disabledAlerts),
      emailAccountAdminsEnabled = pulumi.Input.asOptionalInput<bool>(emailAccountAdminsEnabled),
      emailAddresses = pulumi.Input.asOptionalInput<List<String>>(emailAddresses),
      policyState = pulumi.Input.asOptionalInput<String>(policyState),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageEndpoint = pulumi.Input.asOptionalInput<String>(storageEndpoint),
      synapseWorkspaceId = pulumi.Input.asOptionalInput<String>(synapseWorkspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdminsEnabled': ?emailAccountAdminsEnabled,
      'emailAddresses': ?emailAddresses,
      'policyState': ?policyState,
      'retentionDays': ?retentionDays,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
      'synapseWorkspaceId': ?synapseWorkspaceId,
    };
  }

  factory WorkspaceSecurityAlertPolicyState.fromMap(Map<String, dynamic> map) {
    return WorkspaceSecurityAlertPolicyState(
      disabledAlerts: map['disabledAlerts'] == null ? null : pulumi.Output.create<List<String>>((map['disabledAlerts'] as List).cast<String>()),
      emailAccountAdminsEnabled: map['emailAccountAdminsEnabled'] == null ? null : pulumi.Output.create<bool>(map['emailAccountAdminsEnabled'] as bool),
      emailAddresses: map['emailAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['emailAddresses'] as List).cast<String>()),
      policyState: map['policyState'] == null ? null : pulumi.Output.create<String>(map['policyState'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountAccessKey'] as String),
      storageEndpoint: map['storageEndpoint'] == null ? null : pulumi.Output.create<String>(map['storageEndpoint'] as String),
      synapseWorkspaceId: map['synapseWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['synapseWorkspaceId'] as String),
    );
  }
}

