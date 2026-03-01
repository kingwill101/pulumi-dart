// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerMicrosoftSupportAuditingPolicy resources.
class ServerMicrosoftSupportAuditingPolicyState {
  /// The blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Microsoft support auditing logs.
  final pulumi.Input<String>? blobStorageEndpoint;
  /// Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  ///
  /// > **Note:** If `enabled` is `true`, `blob_storage_endpoint` or `log_monitoring_enabled` are required.
  final pulumi.Input<bool>? enabled;
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`.
  final pulumi.Input<bool>? logMonitoringEnabled;
  /// The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverId;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// The ID of the Subscription containing the Storage Account.
  final pulumi.Input<String>? storageAccountSubscriptionId;

  /// Creates a new [ServerMicrosoftSupportAuditingPolicyState].
  /// [blobStorageEndpoint] The blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Microsoft support auditing logs.
  /// [enabled] Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`.
  /// [serverId] The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountSubscriptionId] The ID of the Subscription containing the Storage Account.
  ServerMicrosoftSupportAuditingPolicyState({
    pulumi.Output<String>? blobStorageEndpoint,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? logMonitoringEnabled,
    pulumi.Output<String>? serverId,
    pulumi.Output<String>? storageAccountAccessKey,
    pulumi.Output<String>? storageAccountSubscriptionId,
  }) :
      blobStorageEndpoint = pulumi.Input.asOptionalInput<String>(blobStorageEndpoint),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      logMonitoringEnabled = pulumi.Input.asOptionalInput<bool>(logMonitoringEnabled),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageAccountSubscriptionId = pulumi.Input.asOptionalInput<String>(storageAccountSubscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobStorageEndpoint': ?blobStorageEndpoint,
      'enabled': ?enabled,
      'logMonitoringEnabled': ?logMonitoringEnabled,
      'serverId': ?serverId,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountSubscriptionId': ?storageAccountSubscriptionId,
    };
  }

  factory ServerMicrosoftSupportAuditingPolicyState.fromMap(Map<String, dynamic> map) {
    return ServerMicrosoftSupportAuditingPolicyState(
      blobStorageEndpoint: map['blobStorageEndpoint'] == null ? null : pulumi.Output.create<String>(map['blobStorageEndpoint'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      logMonitoringEnabled: map['logMonitoringEnabled'] == null ? null : pulumi.Output.create<bool>(map['logMonitoringEnabled'] as bool),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountAccessKey'] as String),
      storageAccountSubscriptionId: map['storageAccountSubscriptionId'] == null ? null : pulumi.Output.create<String>(map['storageAccountSubscriptionId'] as String),
    );
  }
}

