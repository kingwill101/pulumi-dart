// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MaterializedViewDefinitionResponse {
  /// [Optional] Allow non incremental materialized view definition. The default value is "false".
  final pulumi.Input<bool> allowNonIncrementalDefinition;

  /// [Optional] [TrustedTester] Enable automatic refresh of the materialized view when the base table is updated. The default value is "true".
  final pulumi.Input<bool> enableRefresh;

  /// [TrustedTester] The time when this materialized view was last modified, in milliseconds since the epoch.
  final pulumi.Input<String> lastRefreshTime;

  /// [Optional] Max staleness of data that could be returned when materizlized view is queried (formatted as Google SQL Interval type).
  final pulumi.Input<String> maxStaleness;

  /// [Required] A query whose result is persisted.
  final pulumi.Input<String> query;

  /// [Optional] [TrustedTester] The maximum frequency at which this materialized view will be refreshed. The default value is "1800000" (30 minutes).
  final pulumi.Input<String> refreshIntervalMs;

  /// Creates a new [MaterializedViewDefinitionResponse].
  /// [allowNonIncrementalDefinition] [Optional] Allow non incremental materialized view definition. The default value is "false".
  /// [enableRefresh] [Optional] [TrustedTester] Enable automatic refresh of the materialized view when the base table is updated. The default value is "true".
  /// [lastRefreshTime] [TrustedTester] The time when this materialized view was last modified, in milliseconds since the epoch.
  /// [maxStaleness] [Optional] Max staleness of data that could be returned when materizlized view is queried (formatted as Google SQL Interval type).
  /// [query] [Required] A query whose result is persisted.
  /// [refreshIntervalMs] [Optional] [TrustedTester] The maximum frequency at which this materialized view will be refreshed. The default value is "1800000" (30 minutes).
  MaterializedViewDefinitionResponse({
    required this.allowNonIncrementalDefinition,
    required this.enableRefresh,
    required this.lastRefreshTime,
    required this.maxStaleness,
    required this.query,
    required this.refreshIntervalMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNonIncrementalDefinition': allowNonIncrementalDefinition,
      'enableRefresh': enableRefresh,
      'lastRefreshTime': lastRefreshTime,
      'maxStaleness': maxStaleness,
      'query': query,
      'refreshIntervalMs': refreshIntervalMs,
    };
  }

  factory MaterializedViewDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return MaterializedViewDefinitionResponse(
      allowNonIncrementalDefinition: pulumi.Input.fromValue(
        map['allowNonIncrementalDefinition'] as bool,
      ),
      enableRefresh: pulumi.Input.fromValue(map['enableRefresh'] as bool),
      lastRefreshTime: pulumi.Input.fromValue(map['lastRefreshTime'] as String),
      maxStaleness: pulumi.Input.fromValue(map['maxStaleness'] as String),
      query: pulumi.Input.fromValue(map['query'] as String),
      refreshIntervalMs: pulumi.Input.fromValue(
        map['refreshIntervalMs'] as String,
      ),
    );
  }
}
