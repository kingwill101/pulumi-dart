// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A message representing a metric in the measurement.
class GoogleCloudMlV1MeasurementMetric {
  /// Metric name.
  final pulumi.Input<String> metric;
  /// The value for this metric.
  final pulumi.Input<double> value;

  /// Creates a new [GoogleCloudMlV1MeasurementMetric].
  /// [metric] Metric name.
  /// [value] The value for this metric.
  GoogleCloudMlV1MeasurementMetric({
    required this.metric,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric,
      'value': value,
    };
  }

  factory GoogleCloudMlV1MeasurementMetric.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1MeasurementMetric(
      metric: (map['metric'] as String).input(),
      value: (map['value'] as double).input(),
    );
  }
}

