// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_server_microsoft_support_auditing_policy_server_microsoft_support_auditing_policy_args_doc}
/// The set of arguments for ServerMicrosoftSupportAuditingPolicy.
/// {@endtemplate}
/// {@macro pulumi_mssql_server_microsoft_support_auditing_policy_server_microsoft_support_auditing_policy_args_doc}
class ServerMicrosoftSupportAuditingPolicyArgs {
  /// The blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Microsoft support auditing logs.
  final pulumi.Input<String>? blobStorageEndpoint;
  /// Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  ///
  /// > **Note:** If `enabled` is `true`, `blob_storage_endpoint` or `log_monitoring_enabled` are required.
  final pulumi.Input<bool>? enabled;
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`.
  final pulumi.Input<bool>? logMonitoringEnabled;
  /// The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// The ID of the Subscription containing the Storage Account.
  final pulumi.Input<String>? storageAccountSubscriptionId;

  /// Creates a new [ServerMicrosoftSupportAuditingPolicyArgs].
  /// [blobStorageEndpoint] The blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Microsoft support auditing logs.
  /// [enabled] Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`.
  /// [serverId] The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountSubscriptionId] The ID of the Subscription containing the Storage Account.
  ServerMicrosoftSupportAuditingPolicyArgs({
    this.blobStorageEndpoint,
    this.enabled,
    this.logMonitoringEnabled,
    required this.serverId,
    this.storageAccountAccessKey,
    this.storageAccountSubscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobStorageEndpoint': ?blobStorageEndpoint,
      'enabled': ?enabled,
      'logMonitoringEnabled': ?logMonitoringEnabled,
      'serverId': serverId,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountSubscriptionId': ?storageAccountSubscriptionId,
    };
  }

  factory ServerMicrosoftSupportAuditingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerMicrosoftSupportAuditingPolicyArgs(
      blobStorageEndpoint: map['blobStorageEndpoint'] == null ? null : (map['blobStorageEndpoint']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      logMonitoringEnabled: map['logMonitoringEnabled'] == null ? null : (map['logMonitoringEnabled']! as bool).input(),
      serverId: (map['serverId'] as String).input(),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : (map['storageAccountAccessKey']! as String).input(),
      storageAccountSubscriptionId: map['storageAccountSubscriptionId'] == null ? null : (map['storageAccountSubscriptionId']! as String).input(),
    );
  }
}

