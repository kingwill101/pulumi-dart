// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceExtendedAuditingPolicy resources.
class WorkspaceExtendedAuditingPolicyState {
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`.
  final pulumi.Input<bool>? logMonitoringEnabled;
  /// The number of days to retain logs for in the storage account. Defaults to `0`.
  final pulumi.Input<int>? retentionInDays;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Is `storage_account_access_key` value the storage's secondary key?
  final pulumi.Input<bool>? storageAccountAccessKeyIsSecondary;
  /// The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  final pulumi.Input<String>? storageEndpoint;
  /// The ID of the Synapse workspace to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? synapseWorkspaceId;

  /// Creates a new [WorkspaceExtendedAuditingPolicyState].
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`.
  /// [retentionInDays] The number of days to retain logs for in the storage account. Defaults to `0`.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountAccessKeyIsSecondary] Is `storage_account_access_key` value the storage's secondary key?
  /// [storageEndpoint] The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  /// [synapseWorkspaceId] The ID of the Synapse workspace to set the extended auditing policy. Changing this forces a new resource to be created.
  WorkspaceExtendedAuditingPolicyState({
    this.logMonitoringEnabled,
    this.retentionInDays,
    this.storageAccountAccessKey,
    this.storageAccountAccessKeyIsSecondary,
    this.storageEndpoint,
    this.synapseWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMonitoringEnabled': ?logMonitoringEnabled,
      'retentionInDays': ?retentionInDays,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountAccessKeyIsSecondary': ?storageAccountAccessKeyIsSecondary,
      'storageEndpoint': ?storageEndpoint,
      'synapseWorkspaceId': ?synapseWorkspaceId,
    };
  }

  factory WorkspaceExtendedAuditingPolicyState.fromMap(Map<String, dynamic> map) {
    return WorkspaceExtendedAuditingPolicyState(
      logMonitoringEnabled: map['logMonitoringEnabled'] == null ? null : (map['logMonitoringEnabled'] as bool).input(),
      retentionInDays: map['retentionInDays'] == null ? null : (map['retentionInDays'] as int).input(),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : (map['storageAccountAccessKey'] as String).input(),
      storageAccountAccessKeyIsSecondary: map['storageAccountAccessKeyIsSecondary'] == null ? null : (map['storageAccountAccessKeyIsSecondary'] as bool).input(),
      storageEndpoint: map['storageEndpoint'] == null ? null : (map['storageEndpoint'] as String).input(),
      synapseWorkspaceId: map['synapseWorkspaceId'] == null ? null : (map['synapseWorkspaceId'] as String).input(),
    );
  }
}

