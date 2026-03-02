// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_workspace_security_alert_policy_workspace_security_alert_policy_args_doc}
/// The set of arguments for WorkspaceSecurityAlertPolicy.
/// {@endtemplate}
/// {@macro pulumi_synapse_workspace_security_alert_policy_workspace_security_alert_policy_args_doc}
class WorkspaceSecurityAlertPolicyArgs {
  /// Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  final pulumi.Input<List<String>>? disabledAlerts;
  /// Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`.
  final pulumi.Input<bool>? emailAccountAdminsEnabled;
  /// Specifies an array of email addresses to which the alert is sent.
  final pulumi.Input<List<String>>? emailAddresses;
  /// Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific workspace. Possible values are `Disabled`, `Enabled` and `New`.
  final pulumi.Input<String> policyState;
  /// Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`.
  final pulumi.Input<int>? retentionDays;
  /// Specifies the identifier key of the Threat Detection audit storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs.
  final pulumi.Input<String>? storageEndpoint;
  /// Specifies the ID of the Synapse Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String> synapseWorkspaceId;

  /// Creates a new [WorkspaceSecurityAlertPolicyArgs].
  /// [disabledAlerts] Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  /// [emailAccountAdminsEnabled] Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`.
  /// [emailAddresses] Specifies an array of email addresses to which the alert is sent.
  /// [policyState] Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific workspace. Possible values are `Disabled`, `Enabled` and `New`.
  /// [retentionDays] Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`.
  /// [storageAccountAccessKey] Specifies the identifier key of the Threat Detection audit storage account.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs.
  /// [synapseWorkspaceId] Specifies the ID of the Synapse Workspace. Changing this forces a new resource to be created.
  WorkspaceSecurityAlertPolicyArgs({
    this.disabledAlerts,
    this.emailAccountAdminsEnabled,
    this.emailAddresses,
    required this.policyState,
    this.retentionDays,
    this.storageAccountAccessKey,
    this.storageEndpoint,
    required this.synapseWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdminsEnabled': ?emailAccountAdminsEnabled,
      'emailAddresses': ?emailAddresses,
      'policyState': policyState,
      'retentionDays': ?retentionDays,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
      'synapseWorkspaceId': synapseWorkspaceId,
    };
  }

  factory WorkspaceSecurityAlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceSecurityAlertPolicyArgs(
      disabledAlerts: map['disabledAlerts'] == null ? null : ((map['disabledAlerts']! as List).cast<String>()).input(),
      emailAccountAdminsEnabled: map['emailAccountAdminsEnabled'] == null ? null : (map['emailAccountAdminsEnabled']! as bool).input(),
      emailAddresses: map['emailAddresses'] == null ? null : ((map['emailAddresses']! as List).cast<String>()).input(),
      policyState: (map['policyState'] as String).input(),
      retentionDays: map['retentionDays'] == null ? null : (map['retentionDays']! as int).input(),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : (map['storageAccountAccessKey']! as String).input(),
      storageEndpoint: map['storageEndpoint'] == null ? null : (map['storageEndpoint']! as String).input(),
      synapseWorkspaceId: (map['synapseWorkspaceId'] as String).input(),
    );
  }
}

