// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MaterializedViewDefinition {
  /// [Optional] Allow non incremental materialized view definition. The default value is "false".
  final pulumi.Input<bool>? allowNonIncrementalDefinition;
  /// [Optional] [TrustedTester] Enable automatic refresh of the materialized view when the base table is updated. The default value is "true".
  final pulumi.Input<bool>? enableRefresh;
  /// [Optional] Max staleness of data that could be returned when materizlized view is queried (formatted as Google SQL Interval type).
  final pulumi.Input<String>? maxStaleness;
  /// [Required] A query whose result is persisted.
  final pulumi.Input<String>? query;
  /// [Optional] [TrustedTester] The maximum frequency at which this materialized view will be refreshed. The default value is "1800000" (30 minutes).
  final pulumi.Input<String>? refreshIntervalMs;

  /// Creates a new [MaterializedViewDefinition].
  /// [allowNonIncrementalDefinition] [Optional] Allow non incremental materialized view definition. The default value is "false".
  /// [enableRefresh] [Optional] [TrustedTester] Enable automatic refresh of the materialized view when the base table is updated. The default value is "true".
  /// [maxStaleness] [Optional] Max staleness of data that could be returned when materizlized view is queried (formatted as Google SQL Interval type).
  /// [query] [Required] A query whose result is persisted.
  /// [refreshIntervalMs] [Optional] [TrustedTester] The maximum frequency at which this materialized view will be refreshed. The default value is "1800000" (30 minutes).
  const MaterializedViewDefinition({
    this.allowNonIncrementalDefinition,
    this.enableRefresh,
    this.maxStaleness,
    this.query,
    this.refreshIntervalMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNonIncrementalDefinition': ?allowNonIncrementalDefinition,
      'enableRefresh': ?enableRefresh,
      'maxStaleness': ?maxStaleness,
      'query': ?query,
      'refreshIntervalMs': ?refreshIntervalMs,
    };
  }

  factory MaterializedViewDefinition.fromMap(Map<String, dynamic> map) {
    return MaterializedViewDefinition(
      allowNonIncrementalDefinition: (() { final guardedValue = map['allowNonIncrementalDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableRefresh: (() { final guardedValue = map['enableRefresh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxStaleness: (() { final guardedValue = map['maxStaleness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshIntervalMs: (() { final guardedValue = map['refreshIntervalMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
