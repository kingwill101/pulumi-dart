// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_explorer_dataset_field.dart';

/// {@template pulumi_index_log_explorer_dataset_log_explorer_dataset_args_doc}
/// The set of arguments for LogExplorerDataset.
/// {@endtemplate}
/// {@macro pulumi_index_log_explorer_dataset_log_explorer_dataset_args_doc}
class LogExplorerDatasetArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Dataset type name to create (e.g. `httpRequests`).
  final pulumi.Input<String> dataset;
  /// Set to `false` to allow deletion of this dataset.
  final pulumi.Input<bool?>? deletionProtection;
  /// Whether to enable or disable log ingest for this dataset.
  final pulumi.Input<bool?>? enabled;
  /// Controls which fields the API ingests. Defaults to all available
  /// fields when absent.
  /// Each dataset requires its own timestamp field to remain enabled (the
  /// field name varies per dataset type); omitting it from an explicit
  /// selection is rejected by the API.
  final pulumi.Input<List<LogExplorerDatasetField>?>? fields;
  /// Optional Logpush filter predicate to restrict which events are ingested.
  /// Omitting this attribute means no filter. An empty string also means no filter.
  /// Removing a configured filter sends an empty string to clear it in the API.
  /// The provider stores missing or null API filters as empty strings in state.
  /// See [Logpush filters](https://developers.cloudflare.com/logs/reference/filters/)
  /// for syntax and examples.
  final pulumi.Input<String?>? filter;
  /// Whether to filter attack traffic from the Logpush job. The API defaults to true on creation for http*requests, firewall*events, and network*analytics*logs. If omitted on update, the existing setting is kept. The API omits this setting for datasets that do not support it.
  final pulumi.Input<bool?>? filterAttackTraffic;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [LogExplorerDatasetArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [dataset] Dataset type name to create (e.g. `httpRequests`).
  /// [deletionProtection] Set to `false` to allow deletion of this dataset.
  /// [enabled] Whether to enable or disable log ingest for this dataset.
  /// [fields] Controls which fields the API ingests. Defaults to all available
  /// [filter] Optional Logpush filter predicate to restrict which events are ingested.
  /// [filterAttackTraffic] Whether to filter attack traffic from the Logpush job. The API defaults to true on creation for http*requests, firewall*events, and network*analytics*logs. If omitted on update, the existing setting is kept. The API omits this setting for datasets that do not support it.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const LogExplorerDatasetArgs({
    this.accountId,
    required this.dataset,
    this.deletionProtection,
    this.enabled,
    this.fields,
    this.filter,
    this.filterAttackTraffic,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'dataset': dataset,
      'deletionProtection': ?deletionProtection,
      'enabled': ?enabled,
      'fields': ?pulumi.Input.mapOptionalInputValue<List<LogExplorerDatasetField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<LogExplorerDatasetField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?filter,
      'filterAttackTraffic': ?filterAttackTraffic,
      'zoneId': ?zoneId,
    };
  }

  factory LogExplorerDatasetArgs.fromMap(Map<String, dynamic> map) {
    return LogExplorerDatasetArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogExplorerDatasetField>(guardedValue, (value) => LogExplorerDatasetField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterAttackTraffic: (() { final guardedValue = map['filterAttackTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
