// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SqlPoolExtendedAuditingPolicy resources.
class SqlPoolExtendedAuditingPolicyState {
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`.
  final pulumi.Input<bool>? logMonitoringEnabled;
  /// The number of days to retain logs for in the storage account. Defaults to `0`.
  final pulumi.Input<int>? retentionInDays;
  /// The ID of the Synapse SQL pool to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sqlPoolId;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Is `storage_account_access_key` value the storage's secondary key?
  final pulumi.Input<bool>? storageAccountAccessKeyIsSecondary;
  /// The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [SqlPoolExtendedAuditingPolicyState].
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`.
  /// [retentionInDays] The number of days to retain logs for in the storage account. Defaults to `0`.
  /// [sqlPoolId] The ID of the Synapse SQL pool to set the extended auditing policy. Changing this forces a new resource to be created.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountAccessKeyIsSecondary] Is `storage_account_access_key` value the storage's secondary key?
  /// [storageEndpoint] The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  SqlPoolExtendedAuditingPolicyState({
    pulumi.Output<bool>? logMonitoringEnabled,
    pulumi.Output<int>? retentionInDays,
    pulumi.Output<String>? sqlPoolId,
    pulumi.Output<String>? storageAccountAccessKey,
    pulumi.Output<bool>? storageAccountAccessKeyIsSecondary,
    pulumi.Output<String>? storageEndpoint,
  }) :
      logMonitoringEnabled = pulumi.Input.asOptionalInput<bool>(logMonitoringEnabled),
      retentionInDays = pulumi.Input.asOptionalInput<int>(retentionInDays),
      sqlPoolId = pulumi.Input.asOptionalInput<String>(sqlPoolId),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageAccountAccessKeyIsSecondary = pulumi.Input.asOptionalInput<bool>(storageAccountAccessKeyIsSecondary),
      storageEndpoint = pulumi.Input.asOptionalInput<String>(storageEndpoint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMonitoringEnabled': ?logMonitoringEnabled,
      'retentionInDays': ?retentionInDays,
      'sqlPoolId': ?sqlPoolId,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountAccessKeyIsSecondary': ?storageAccountAccessKeyIsSecondary,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory SqlPoolExtendedAuditingPolicyState.fromMap(Map<String, dynamic> map) {
    return SqlPoolExtendedAuditingPolicyState(
      logMonitoringEnabled: map['logMonitoringEnabled'] == null ? null : pulumi.Output.create<bool>(map['logMonitoringEnabled'] as bool),
      retentionInDays: map['retentionInDays'] == null ? null : pulumi.Output.create<int>(map['retentionInDays'] as int),
      sqlPoolId: map['sqlPoolId'] == null ? null : pulumi.Output.create<String>(map['sqlPoolId'] as String),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountAccessKey'] as String),
      storageAccountAccessKeyIsSecondary: map['storageAccountAccessKeyIsSecondary'] == null ? null : pulumi.Output.create<bool>(map['storageAccountAccessKeyIsSecondary'] as bool),
      storageEndpoint: map['storageEndpoint'] == null ? null : pulumi.Output.create<String>(map['storageEndpoint'] as String),
    );
  }
}

