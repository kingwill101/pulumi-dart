// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_sql_pool_extended_auditing_policy_sql_pool_extended_auditing_policy_args_doc}
/// The set of arguments for SqlPoolExtendedAuditingPolicy.
/// {@endtemplate}
/// {@macro pulumi_synapse_sql_pool_extended_auditing_policy_sql_pool_extended_auditing_policy_args_doc}
class SqlPoolExtendedAuditingPolicyArgs {
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`.
  final pulumi.Input<bool?>? logMonitoringEnabled;
  /// The number of days to retain logs for in the storage account. Defaults to `0`.
  final pulumi.Input<int?>? retentionInDays;
  /// The ID of the Synapse SQL pool to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> sqlPoolId;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String?>? storageAccountAccessKey;
  /// Is `storageAccountAccessKey` value the storage's secondary key?
  final pulumi.Input<bool?>? storageAccountAccessKeyIsSecondary;
  /// The blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all extended auditing logs.
  final pulumi.Input<String?>? storageEndpoint;

  /// Creates a new [SqlPoolExtendedAuditingPolicyArgs].
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`.
  /// [retentionInDays] The number of days to retain logs for in the storage account. Defaults to `0`.
  /// [sqlPoolId] The ID of the Synapse SQL pool to set the extended auditing policy. Changing this forces a new resource to be created.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountAccessKeyIsSecondary] Is `storageAccountAccessKey` value the storage's secondary key?
  /// [storageEndpoint] The blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all extended auditing logs.
  const SqlPoolExtendedAuditingPolicyArgs({
    this.logMonitoringEnabled,
    this.retentionInDays,
    required this.sqlPoolId,
    this.storageAccountAccessKey,
    this.storageAccountAccessKeyIsSecondary,
    this.storageEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMonitoringEnabled': ?logMonitoringEnabled,
      'retentionInDays': ?retentionInDays,
      'sqlPoolId': sqlPoolId,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountAccessKeyIsSecondary': ?storageAccountAccessKeyIsSecondary,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory SqlPoolExtendedAuditingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SqlPoolExtendedAuditingPolicyArgs(
      logMonitoringEnabled: (() { final guardedValue = map['logMonitoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sqlPoolId: pulumi.Input.fromValue(map['sqlPoolId'] as String),
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountAccessKeyIsSecondary: (() { final guardedValue = map['storageAccountAccessKeyIsSecondary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageEndpoint: (() { final guardedValue = map['storageEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
