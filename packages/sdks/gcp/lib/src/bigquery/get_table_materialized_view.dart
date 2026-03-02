// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableMaterializedView {
  /// Allow non incremental materialized view definition. The default value is false.
  final pulumi.Input<bool> allowNonIncrementalDefinition;
  /// Specifies if BigQuery should automatically refresh materialized view when the base table is updated. The default is true.
  final pulumi.Input<bool> enableRefresh;
  /// A query whose result is persisted.
  final pulumi.Input<String> query;
  /// Specifies maximum frequency at which this materialized view will be refreshed. The default is 1800000.
  final pulumi.Input<int> refreshIntervalMs;

  /// Creates a new [GetTableMaterializedView].
  /// [allowNonIncrementalDefinition] Allow non incremental materialized view definition. The default value is false.
  /// [enableRefresh] Specifies if BigQuery should automatically refresh materialized view when the base table is updated. The default is true.
  /// [query] A query whose result is persisted.
  /// [refreshIntervalMs] Specifies maximum frequency at which this materialized view will be refreshed. The default is 1800000.
  GetTableMaterializedView({
    required this.allowNonIncrementalDefinition,
    required this.enableRefresh,
    required this.query,
    required this.refreshIntervalMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNonIncrementalDefinition': allowNonIncrementalDefinition,
      'enableRefresh': enableRefresh,
      'query': query,
      'refreshIntervalMs': refreshIntervalMs,
    };
  }

  factory GetTableMaterializedView.fromMap(Map<String, dynamic> map) {
    return GetTableMaterializedView(
      allowNonIncrementalDefinition: (map['allowNonIncrementalDefinition'] as bool).input(),
      enableRefresh: (map['enableRefresh'] as bool).input(),
      query: (map['query'] as String).input(),
      refreshIntervalMs: (map['refreshIntervalMs'] as int).input(),
    );
  }
}

