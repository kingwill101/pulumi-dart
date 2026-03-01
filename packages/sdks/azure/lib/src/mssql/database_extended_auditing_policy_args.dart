// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_database_extended_auditing_policy_database_extended_auditing_policy_args_doc}
/// The set of arguments for DatabaseExtendedAuditingPolicy.
/// {@endtemplate}
/// {@macro pulumi_mssql_database_extended_auditing_policy_database_extended_auditing_policy_args_doc}
class DatabaseExtendedAuditingPolicyArgs {
  /// The ID of the SQL database to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> databaseId;
  /// Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  ///
  /// > **Note:** If `enabled` is `true`, `storage_endpoint` or `log_monitoring_enabled` are required.
  final pulumi.Input<bool>? enabled;
  /// Enable audit events to Azure Monitor? Defaults to `true`.
  ///
  /// > **Note:** To enable sending audit events to Log Analytics, please refer to the example which can be found in the `./examples/sql-azure/sql_auditing_log_analytics` directory within the GitHub Repository.  To enable sending server audit events to Log Analytics, please enable the master database to send audit events to Log Analytics.
  /// To enable audit events to Eventhub, please refer to the example which can be found in the `./examples/sql-azure/sql_auditing_eventhub` directory within the GitHub Repository.
  final pulumi.Input<bool>? logMonitoringEnabled;
  /// The number of days to retain logs for in the storage account. Defaults to `0`.
  final pulumi.Input<int>? retentionInDays;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Is `storage_account_access_key` value the storage's secondary key?
  final pulumi.Input<bool>? storageAccountAccessKeyIsSecondary;
  /// The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [DatabaseExtendedAuditingPolicyArgs].
  /// [databaseId] The ID of the SQL database to set the extended auditing policy. Changing this forces a new resource to be created.
  /// [enabled] Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? Defaults to `true`.
  /// [retentionInDays] The number of days to retain logs for in the storage account. Defaults to `0`.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountAccessKeyIsSecondary] Is `storage_account_access_key` value the storage's secondary key?
  /// [storageEndpoint] The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  DatabaseExtendedAuditingPolicyArgs({
    required pulumi.Output<String> databaseId,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? logMonitoringEnabled,
    pulumi.Output<int>? retentionInDays,
    pulumi.Output<String>? storageAccountAccessKey,
    pulumi.Output<bool>? storageAccountAccessKeyIsSecondary,
    pulumi.Output<String>? storageEndpoint,
  }) :
      databaseId = pulumi.Input.asInput<String>(databaseId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      logMonitoringEnabled = pulumi.Input.asOptionalInput<bool>(logMonitoringEnabled),
      retentionInDays = pulumi.Input.asOptionalInput<int>(retentionInDays),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageAccountAccessKeyIsSecondary = pulumi.Input.asOptionalInput<bool>(storageAccountAccessKeyIsSecondary),
      storageEndpoint = pulumi.Input.asOptionalInput<String>(storageEndpoint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'enabled': ?enabled,
      'logMonitoringEnabled': ?logMonitoringEnabled,
      'retentionInDays': ?retentionInDays,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountAccessKeyIsSecondary': ?storageAccountAccessKeyIsSecondary,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory DatabaseExtendedAuditingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseExtendedAuditingPolicyArgs(
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      logMonitoringEnabled: map['logMonitoringEnabled'] == null ? null : pulumi.Output.create<bool>(map['logMonitoringEnabled'] as bool),
      retentionInDays: map['retentionInDays'] == null ? null : pulumi.Output.create<int>(map['retentionInDays'] as int),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountAccessKey'] as String),
      storageAccountAccessKeyIsSecondary: map['storageAccountAccessKeyIsSecondary'] == null ? null : pulumi.Output.create<bool>(map['storageAccountAccessKeyIsSecondary'] as bool),
      storageEndpoint: map['storageEndpoint'] == null ? null : pulumi.Output.create<String>(map['storageEndpoint'] as String),
    );
  }
}

