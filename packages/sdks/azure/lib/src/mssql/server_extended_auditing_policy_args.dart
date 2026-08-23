// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_server_extended_auditing_policy_server_extended_auditing_policy_args_doc}
/// The set of arguments for ServerExtendedAuditingPolicy.
/// {@endtemplate}
/// {@macro pulumi_mssql_server_extended_auditing_policy_server_extended_auditing_policy_args_doc}
class ServerExtendedAuditingPolicyArgs {
  /// A list of Actions-Groups and Actions to audit.
  final pulumi.Input<List<String>>? auditActionsAndGroups;
  /// Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  ///
  /// &gt; **Note:** If `enabled` is `true`, `storageEndpoint` or `logMonitoringEnabled` are required.
  final pulumi.Input<bool>? enabled;
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`.
  final pulumi.Input<bool>? logMonitoringEnabled;
  /// Specifies condition of where clause when creating an audit.
  final pulumi.Input<String>? predicateExpression;
  /// The number of days to retain logs for in the storage account. Defaults to `0`.
  final pulumi.Input<int>? retentionInDays;
  /// The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Is `storageAccountAccessKey` value the storage's secondary key?
  final pulumi.Input<bool>? storageAccountAccessKeyIsSecondary;
  /// The ID of the Subscription containing the Storage Account.
  final pulumi.Input<String>? storageAccountSubscriptionId;
  /// The blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all extended auditing logs.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [ServerExtendedAuditingPolicyArgs].
  /// [auditActionsAndGroups] A list of Actions-Groups and Actions to audit.
  /// [enabled] Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`.
  /// [predicateExpression] Specifies condition of where clause when creating an audit.
  /// [retentionInDays] The number of days to retain logs for in the storage account. Defaults to `0`.
  /// [serverId] The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountAccessKeyIsSecondary] Is `storageAccountAccessKey` value the storage's secondary key?
  /// [storageAccountSubscriptionId] The ID of the Subscription containing the Storage Account.
  /// [storageEndpoint] The blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all extended auditing logs.
  const ServerExtendedAuditingPolicyArgs({
    this.auditActionsAndGroups,
    this.enabled,
    this.logMonitoringEnabled,
    this.predicateExpression,
    this.retentionInDays,
    required this.serverId,
    this.storageAccountAccessKey,
    this.storageAccountAccessKeyIsSecondary,
    this.storageAccountSubscriptionId,
    this.storageEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditActionsAndGroups': ?auditActionsAndGroups,
      'enabled': ?enabled,
      'logMonitoringEnabled': ?logMonitoringEnabled,
      'predicateExpression': ?predicateExpression,
      'retentionInDays': ?retentionInDays,
      'serverId': serverId,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountAccessKeyIsSecondary': ?storageAccountAccessKeyIsSecondary,
      'storageAccountSubscriptionId': ?storageAccountSubscriptionId,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory ServerExtendedAuditingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerExtendedAuditingPolicyArgs(
      auditActionsAndGroups: (() { final guardedValue = map['auditActionsAndGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logMonitoringEnabled: (() { final guardedValue = map['logMonitoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      predicateExpression: (() { final guardedValue = map['predicateExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountAccessKeyIsSecondary: (() { final guardedValue = map['storageAccountAccessKeyIsSecondary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageAccountSubscriptionId: (() { final guardedValue = map['storageAccountSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageEndpoint: (() { final guardedValue = map['storageEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
