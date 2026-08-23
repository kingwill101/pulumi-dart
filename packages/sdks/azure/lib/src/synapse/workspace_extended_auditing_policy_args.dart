// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_workspace_extended_auditing_policy_workspace_extended_auditing_policy_args_doc}
/// The set of arguments for WorkspaceExtendedAuditingPolicy.
/// {@endtemplate}
/// {@macro pulumi_synapse_workspace_extended_auditing_policy_workspace_extended_auditing_policy_args_doc}
class WorkspaceExtendedAuditingPolicyArgs {
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`.
  final pulumi.Input<bool>? logMonitoringEnabled;
  /// The number of days to retain logs for in the storage account. Defaults to `0`.
  final pulumi.Input<int>? retentionInDays;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Is `storageAccountAccessKey` value the storage's secondary key?
  final pulumi.Input<bool>? storageAccountAccessKeyIsSecondary;
  /// The blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all extended auditing logs.
  final pulumi.Input<String>? storageEndpoint;
  /// The ID of the Synapse workspace to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> synapseWorkspaceId;

  /// Creates a new [WorkspaceExtendedAuditingPolicyArgs].
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`.
  /// [retentionInDays] The number of days to retain logs for in the storage account. Defaults to `0`.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountAccessKeyIsSecondary] Is `storageAccountAccessKey` value the storage's secondary key?
  /// [storageEndpoint] The blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all extended auditing logs.
  /// [synapseWorkspaceId] The ID of the Synapse workspace to set the extended auditing policy. Changing this forces a new resource to be created.
  const WorkspaceExtendedAuditingPolicyArgs({
    this.logMonitoringEnabled,
    this.retentionInDays,
    this.storageAccountAccessKey,
    this.storageAccountAccessKeyIsSecondary,
    this.storageEndpoint,
    required this.synapseWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMonitoringEnabled': ?logMonitoringEnabled,
      'retentionInDays': ?retentionInDays,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountAccessKeyIsSecondary': ?storageAccountAccessKeyIsSecondary,
      'storageEndpoint': ?storageEndpoint,
      'synapseWorkspaceId': synapseWorkspaceId,
    };
  }

  factory WorkspaceExtendedAuditingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceExtendedAuditingPolicyArgs(
      logMonitoringEnabled: (() { final guardedValue = map['logMonitoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountAccessKeyIsSecondary: (() { final guardedValue = map['storageAccountAccessKeyIsSecondary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageEndpoint: (() { final guardedValue = map['storageEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synapseWorkspaceId: pulumi.Input.fromValue(map['synapseWorkspaceId'] as String),
    );
  }
}
