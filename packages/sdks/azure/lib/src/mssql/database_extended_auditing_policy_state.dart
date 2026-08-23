// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseExtendedAuditingPolicy resources.
class DatabaseExtendedAuditingPolicyState {
  /// The ID of the SQL database to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? databaseId;
  /// Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  ///
  /// &gt; **Note:** If `enabled` is `true`, `storageEndpoint` or `logMonitoringEnabled` are required.
  final pulumi.Input<bool>? enabled;
  /// Enable audit events to Azure Monitor? Defaults to `true`.
  ///
  /// &gt; **Note:** To enable sending audit events to Log Analytics, please refer to the example which can be found in the `./examples/sql-azure/sql_auditing_log_analytics` directory within the GitHub Repository.  To enable sending server audit events to Log Analytics, please enable the master database to send audit events to Log Analytics.
  /// To enable audit events to Eventhub, please refer to the example which can be found in the `./examples/sql-azure/sql_auditing_eventhub` directory within the GitHub Repository.
  final pulumi.Input<bool>? logMonitoringEnabled;
  /// The number of days to retain logs for in the storage account. Defaults to `0`.
  final pulumi.Input<int>? retentionInDays;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Is `storageAccountAccessKey` value the storage's secondary key?
  final pulumi.Input<bool>? storageAccountAccessKeyIsSecondary;
  /// The blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all extended auditing logs.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [DatabaseExtendedAuditingPolicyState].
  /// [databaseId] The ID of the SQL database to set the extended auditing policy. Changing this forces a new resource to be created.
  /// [enabled] Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? Defaults to `true`.
  /// [retentionInDays] The number of days to retain logs for in the storage account. Defaults to `0`.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountAccessKeyIsSecondary] Is `storageAccountAccessKey` value the storage's secondary key?
  /// [storageEndpoint] The blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all extended auditing logs.
  const DatabaseExtendedAuditingPolicyState({
    this.databaseId,
    this.enabled,
    this.logMonitoringEnabled,
    this.retentionInDays,
    this.storageAccountAccessKey,
    this.storageAccountAccessKeyIsSecondary,
    this.storageEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': ?databaseId,
      'enabled': ?enabled,
      'logMonitoringEnabled': ?logMonitoringEnabled,
      'retentionInDays': ?retentionInDays,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountAccessKeyIsSecondary': ?storageAccountAccessKeyIsSecondary,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory DatabaseExtendedAuditingPolicyState.fromMap(Map<String, dynamic> map) {
    return DatabaseExtendedAuditingPolicyState(
      databaseId: (() { final guardedValue = map['databaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logMonitoringEnabled: (() { final guardedValue = map['logMonitoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountAccessKeyIsSecondary: (() { final guardedValue = map['storageAccountAccessKeyIsSecondary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageEndpoint: (() { final guardedValue = map['storageEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
