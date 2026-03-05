// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A message representing a metric in the measurement.
class GoogleCloudAiplatformV1MeasurementMetricResponse {
  /// The ID of the Metric. The Metric should be defined in StudySpec's Metrics.
  final pulumi.Input<String> metricId;
  /// The value for this metric.
  final pulumi.Input<double> value;

  /// Creates a new [GoogleCloudAiplatformV1MeasurementMetricResponse].
  /// [metricId] The ID of the Metric. The Metric should be defined in StudySpec's Metrics.
  /// [value] The value for this metric.
  GoogleCloudAiplatformV1MeasurementMetricResponse({
    required this.metricId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricId': metricId,
      'value': value,
    };
  }

  factory GoogleCloudAiplatformV1MeasurementMetricResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1MeasurementMetricResponse(
      metricId: pulumi.Input.fromValue(map['metricId'] as String),
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}

