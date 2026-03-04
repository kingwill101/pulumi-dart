// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_measurement_metric_response.dart';

/// A message representing a measurement.
class GoogleCloudMlV1MeasurementResponse {
  /// Time that the trial has been running at the point of this measurement.
  final pulumi.Input<String> elapsedTime;

  /// Provides a list of metrics that act as inputs into the objective function.
  final pulumi.Input<List<GoogleCloudMlV1MeasurementMetricResponse>> metrics;

  /// The number of steps a machine learning model has been trained for. Must be non-negative.
  final pulumi.Input<String> stepCount;

  /// Creates a new [GoogleCloudMlV1MeasurementResponse].
  /// [elapsedTime] Time that the trial has been running at the point of this measurement.
  /// [metrics] Provides a list of metrics that act as inputs into the objective function.
  /// [stepCount] The number of steps a machine learning model has been trained for. Must be non-negative.
  GoogleCloudMlV1MeasurementResponse({
    required this.elapsedTime,
    required this.metrics,
    required this.stepCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elapsedTime': elapsedTime,
      'metrics':
          pulumi.Input.mapInputValue<
            List<GoogleCloudMlV1MeasurementMetricResponse>,
            List<Map<String, dynamic>>
          >(
            metrics,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudMlV1MeasurementMetricResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'stepCount': stepCount,
    };
  }

  factory GoogleCloudMlV1MeasurementResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1MeasurementResponse(
      elapsedTime: pulumi.Input.fromValue(map['elapsedTime'] as String),
      metrics: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GoogleCloudMlV1MeasurementMetricResponse>(
          map['metrics']!,
          (value) => GoogleCloudMlV1MeasurementMetricResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      stepCount: pulumi.Input.fromValue(map['stepCount'] as String),
    );
  }
}
