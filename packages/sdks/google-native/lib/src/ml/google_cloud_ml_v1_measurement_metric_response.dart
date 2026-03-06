// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A message representing a metric in the measurement.
class GoogleCloudMlV1MeasurementMetricResponse {
  /// Metric name.
  final pulumi.Input<String> metric;
  /// The value for this metric.
  final pulumi.Input<double> value;

  /// Creates a new [GoogleCloudMlV1MeasurementMetricResponse].
  /// [metric] Metric name.
  /// [value] The value for this metric.
  const GoogleCloudMlV1MeasurementMetricResponse({
    required this.metric,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric,
      'value': value,
    };
  }

  factory GoogleCloudMlV1MeasurementMetricResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1MeasurementMetricResponse(
      metric: pulumi.Input.fromValue(map['metric'] as String),
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}

