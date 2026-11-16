// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_explorer_dataset_field.dart';

/// Input properties used for looking up and filtering LogExplorerDataset resources.
class LogExplorerDatasetState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// RFC3339 timestamp recording when the API created this dataset.
  final pulumi.Input<String?>? createdAt;
  /// Dataset type name to create (e.g. `httpRequests`).
  final pulumi.Input<String?>? dataset;
  /// Unique dataset ID.
  final pulumi.Input<String?>? datasetId;
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
  /// Public ID of the account or zone that owns this dataset.
  final pulumi.Input<String?>? objectId;
  /// Whether this dataset belongs to an account or a zone.
  /// Available values: "account", "zone".
  final pulumi.Input<String?>? objectType;
  /// RFC3339 timestamp recording when the API last updated this dataset.
  final pulumi.Input<String?>? updatedAt;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [LogExplorerDatasetState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [createdAt] RFC3339 timestamp recording when the API created this dataset.
  /// [dataset] Dataset type name to create (e.g. `httpRequests`).
  /// [datasetId] Unique dataset ID.
  /// [deletionProtection] Set to `false` to allow deletion of this dataset.
  /// [enabled] Whether to enable or disable log ingest for this dataset.
  /// [fields] Controls which fields the API ingests. Defaults to all available
  /// [filter] Optional Logpush filter predicate to restrict which events are ingested.
  /// [filterAttackTraffic] Whether to filter attack traffic from the Logpush job. The API defaults to true on creation for http*requests, firewall*events, and network*analytics*logs. If omitted on update, the existing setting is kept. The API omits this setting for datasets that do not support it.
  /// [objectId] Public ID of the account or zone that owns this dataset.
  /// [objectType] Whether this dataset belongs to an account or a zone.
  /// [updatedAt] RFC3339 timestamp recording when the API last updated this dataset.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const LogExplorerDatasetState({
    this.accountId,
    this.createdAt,
    this.dataset,
    this.datasetId,
    this.deletionProtection,
    this.enabled,
    this.fields,
    this.filter,
    this.filterAttackTraffic,
    this.objectId,
    this.objectType,
    this.updatedAt,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'dataset': ?dataset,
      'datasetId': ?datasetId,
      'deletionProtection': ?deletionProtection,
      'enabled': ?enabled,
      'fields': ?pulumi.Input.mapOptionalInputValue<List<LogExplorerDatasetField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<LogExplorerDatasetField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?filter,
      'filterAttackTraffic': ?filterAttackTraffic,
      'objectId': ?objectId,
      'objectType': ?objectType,
      'updatedAt': ?updatedAt,
      'zoneId': ?zoneId,
    };
  }

  factory LogExplorerDatasetState.fromMap(Map<String, dynamic> map) {
    return LogExplorerDatasetState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogExplorerDatasetField>(guardedValue, (value) => LogExplorerDatasetField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterAttackTraffic: (() { final guardedValue = map['filterAttackTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectType: (() { final guardedValue = map['objectType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
