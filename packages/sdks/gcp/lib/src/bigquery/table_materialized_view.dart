// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableMaterializedView {
  /// Allow non incremental materialized view definition.
  /// The default value is false.
  final pulumi.Input<bool>? allowNonIncrementalDefinition;

  /// Specifies whether to use BigQuery's automatic refresh for this materialized view when the base table is updated.
  /// The default value is true.
  final pulumi.Input<bool>? enableRefresh;

  /// A query whose result is persisted.
  final pulumi.Input<String> query;

  /// The maximum frequency at which this materialized view will be refreshed.
  /// The default value is 1800000
  final pulumi.Input<int>? refreshIntervalMs;

  /// Creates a new [TableMaterializedView].
  /// [allowNonIncrementalDefinition] Allow non incremental materialized view definition.
  /// [enableRefresh] Specifies whether to use BigQuery's automatic refresh for this materialized view when the base table is updated.
  /// [query] A query whose result is persisted.
  /// [refreshIntervalMs] The maximum frequency at which this materialized view will be refreshed.
  TableMaterializedView({
    this.allowNonIncrementalDefinition,
    this.enableRefresh,
    required this.query,
    this.refreshIntervalMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNonIncrementalDefinition': ?allowNonIncrementalDefinition,
      'enableRefresh': ?enableRefresh,
      'query': query,
      'refreshIntervalMs': ?refreshIntervalMs,
    };
  }

  factory TableMaterializedView.fromMap(Map<String, dynamic> map) {
    return TableMaterializedView(
      allowNonIncrementalDefinition: (() {
        final guardedValue = map['allowNonIncrementalDefinition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableRefresh: (() {
        final guardedValue = map['enableRefresh'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      refreshIntervalMs: (() {
        final guardedValue = map['refreshIntervalMs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
