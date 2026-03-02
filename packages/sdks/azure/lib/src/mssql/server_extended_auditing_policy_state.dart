// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerExtendedAuditingPolicy resources.
class ServerExtendedAuditingPolicyState {
  /// A list of Actions-Groups and Actions to audit.
  final pulumi.Input<List<String>>? auditActionsAndGroups;
  /// Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  ///
  /// > **Note:** If `enabled` is `true`, `storage_endpoint` or `log_monitoring_enabled` are required.
  final pulumi.Input<bool>? enabled;
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`.
  final pulumi.Input<bool>? logMonitoringEnabled;
  /// Specifies condition of where clause when creating an audit.
  final pulumi.Input<String>? predicateExpression;
  /// The number of days to retain logs for in the storage account. Defaults to `0`.
  final pulumi.Input<int>? retentionInDays;
  /// The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverId;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Is `storage_account_access_key` value the storage's secondary key?
  final pulumi.Input<bool>? storageAccountAccessKeyIsSecondary;
  /// The ID of the Subscription containing the Storage Account.
  final pulumi.Input<String>? storageAccountSubscriptionId;
  /// The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [ServerExtendedAuditingPolicyState].
  /// [auditActionsAndGroups] A list of Actions-Groups and Actions to audit.
  /// [enabled] Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`.
  /// [predicateExpression] Specifies condition of where clause when creating an audit.
  /// [retentionInDays] The number of days to retain logs for in the storage account. Defaults to `0`.
  /// [serverId] The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountAccessKeyIsSecondary] Is `storage_account_access_key` value the storage's secondary key?
  /// [storageAccountSubscriptionId] The ID of the Subscription containing the Storage Account.
  /// [storageEndpoint] The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  ServerExtendedAuditingPolicyState({
    this.auditActionsAndGroups,
    this.enabled,
    this.logMonitoringEnabled,
    this.predicateExpression,
    this.retentionInDays,
    this.serverId,
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
      'serverId': ?serverId,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountAccessKeyIsSecondary': ?storageAccountAccessKeyIsSecondary,
      'storageAccountSubscriptionId': ?storageAccountSubscriptionId,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory ServerExtendedAuditingPolicyState.fromMap(Map<String, dynamic> map) {
    return ServerExtendedAuditingPolicyState(
      auditActionsAndGroups: map['auditActionsAndGroups'] == null ? null : ((map['auditActionsAndGroups']! as List).cast<String>()).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      logMonitoringEnabled: map['logMonitoringEnabled'] == null ? null : (map['logMonitoringEnabled']! as bool).input(),
      predicateExpression: map['predicateExpression'] == null ? null : (map['predicateExpression']! as String).input(),
      retentionInDays: map['retentionInDays'] == null ? null : (map['retentionInDays']! as int).input(),
      serverId: map['serverId'] == null ? null : (map['serverId']! as String).input(),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : (map['storageAccountAccessKey']! as String).input(),
      storageAccountAccessKeyIsSecondary: map['storageAccountAccessKeyIsSecondary'] == null ? null : (map['storageAccountAccessKeyIsSecondary']! as bool).input(),
      storageAccountSubscriptionId: map['storageAccountSubscriptionId'] == null ? null : (map['storageAccountSubscriptionId']! as String).input(),
      storageEndpoint: map['storageEndpoint'] == null ? null : (map['storageEndpoint']! as String).input(),
    );
  }
}

