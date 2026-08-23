// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metric of the Query
class GoogleCloudApigeeV1SecurityReportQueryMetric {
  /// Aggregation function: avg, min, max, or sum.
  final pulumi.Input<String>? aggregationFunction;
  /// Alias for the metric. Alias will be used to replace metric name in query results.
  final pulumi.Input<String>? alias;
  /// Metric name.
  final pulumi.Input<String> name;
  /// One of `+`, `-`, `/`, `%`, `*`.
  final pulumi.Input<String>? operator;
  /// Operand value should be provided when operator is set.
  final pulumi.Input<String>? value;

  /// Creates a new [GoogleCloudApigeeV1SecurityReportQueryMetric].
  /// [aggregationFunction] Aggregation function: avg, min, max, or sum.
  /// [alias] Alias for the metric. Alias will be used to replace metric name in query results.
  /// [name] Metric name.
  /// [operator] One of `+`, `-`, `/`, `%`, `*`.
  /// [value] Operand value should be provided when operator is set.
  const GoogleCloudApigeeV1SecurityReportQueryMetric({
    this.aggregationFunction,
    this.alias,
    required this.name,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationFunction': ?aggregationFunction,
      'alias': ?alias,
      'name': name,
      'operator': ?operator,
      'value': ?value,
    };
  }

  factory GoogleCloudApigeeV1SecurityReportQueryMetric.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityReportQueryMetric(
      aggregationFunction: (() { final guardedValue = map['aggregationFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
