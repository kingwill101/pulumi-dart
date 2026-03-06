// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// More info about Metric: https://docs.apigee.com/api-platform/analytics/analytics-reference#metrics
class GoogleCloudApigeeV1QueryMetric {
  /// Alias for the metric. Alias will be used to replace metric name in query results.
  final pulumi.Input<String>? alias;
  /// Aggregation function: avg, min, max, or sum.
  final pulumi.Input<String>? function;
  /// Metric name.
  final pulumi.Input<String> name;
  /// One of `+`, `-`, `/`, `%`, `*`.
  final pulumi.Input<String>? operator;
  /// Operand value should be provided when operator is set.
  final pulumi.Input<String>? value;

  /// Creates a new [GoogleCloudApigeeV1QueryMetric].
  /// [alias] Alias for the metric. Alias will be used to replace metric name in query results.
  /// [function] Aggregation function: avg, min, max, or sum.
  /// [name] Metric name.
  /// [operator] One of `+`, `-`, `/`, `%`, `*`.
  /// [value] Operand value should be provided when operator is set.
  const GoogleCloudApigeeV1QueryMetric({
    this.alias,
    this.function,
    required this.name,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'function': ?function,
      'name': name,
      'operator': ?operator,
      'value': ?value,
    };
  }

  factory GoogleCloudApigeeV1QueryMetric.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1QueryMetric(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      function: (() { final guardedValue = map['function']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

