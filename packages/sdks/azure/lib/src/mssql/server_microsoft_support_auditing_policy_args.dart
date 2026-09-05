// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_server_microsoft_support_auditing_policy_server_microsoft_support_auditing_policy_args_doc}
/// The set of arguments for ServerMicrosoftSupportAuditingPolicy.
/// {@endtemplate}
/// {@macro pulumi_mssql_server_microsoft_support_auditing_policy_server_microsoft_support_auditing_policy_args_doc}
class ServerMicrosoftSupportAuditingPolicyArgs {
  /// The blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Microsoft support auditing logs.
  final pulumi.Input<String?>? blobStorageEndpoint;
  /// Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  ///
  /// &gt; **Note:** If `enabled` is `true`, `blobStorageEndpoint` or `logMonitoringEnabled` are required.
  final pulumi.Input<bool?>? enabled;
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`.
  final pulumi.Input<bool?>? logMonitoringEnabled;
  /// The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String?>? storageAccountAccessKey;
  /// The ID of the Subscription containing the Storage Account.
  final pulumi.Input<String?>? storageAccountSubscriptionId;

  /// Creates a new [ServerMicrosoftSupportAuditingPolicyArgs].
  /// [blobStorageEndpoint] The blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Microsoft support auditing logs.
  /// [enabled] Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`.
  /// [serverId] The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountSubscriptionId] The ID of the Subscription containing the Storage Account.
  const ServerMicrosoftSupportAuditingPolicyArgs({
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
      blobStorageEndpoint: (() { final guardedValue = map['blobStorageEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logMonitoringEnabled: (() { final guardedValue = map['logMonitoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountSubscriptionId: (() { final guardedValue = map['storageAccountSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
