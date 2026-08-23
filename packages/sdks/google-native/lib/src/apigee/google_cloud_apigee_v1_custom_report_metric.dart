// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This encapsulates a metric property of the form sum(message_count) where name is message_count and function is sum
class GoogleCloudApigeeV1CustomReportMetric {
  /// aggregate function
  final pulumi.Input<String>? function;
  /// name of the metric
  final pulumi.Input<String>? name;

  /// Creates a new [GoogleCloudApigeeV1CustomReportMetric].
  /// [function] aggregate function
  /// [name] name of the metric
  const GoogleCloudApigeeV1CustomReportMetric({
    this.function,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'function': ?function,
      'name': ?name,
    };
  }

  factory GoogleCloudApigeeV1CustomReportMetric.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1CustomReportMetric(
      function: (() { final guardedValue = map['function']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
