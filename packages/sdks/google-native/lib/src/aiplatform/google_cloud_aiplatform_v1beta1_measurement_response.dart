// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_measurement_metric_response.dart';

/// A message representing a Measurement of a Trial. A Measurement contains the Metrics got by executing a Trial using suggested hyperparameter values.
class GoogleCloudAiplatformV1beta1MeasurementResponse {
  /// Time that the Trial has been running at the point of this Measurement.
  final pulumi.Input<String> elapsedDuration;

  /// A list of metrics got by evaluating the objective functions using suggested Parameter values.
  final pulumi.Input<
    List<GoogleCloudAiplatformV1beta1MeasurementMetricResponse>
  >
  metrics;

  /// The number of steps the machine learning model has been trained for. Must be non-negative.
  final pulumi.Input<String> stepCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1MeasurementResponse].
  /// [elapsedDuration] Time that the Trial has been running at the point of this Measurement.
  /// [metrics] A list of metrics got by evaluating the objective functions using suggested Parameter values.
  /// [stepCount] The number of steps the machine learning model has been trained for. Must be non-negative.
  GoogleCloudAiplatformV1beta1MeasurementResponse({
    required this.elapsedDuration,
    required this.metrics,
    required this.stepCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elapsedDuration': elapsedDuration,
      'metrics':
          pulumi.Input.mapInputValue<
            List<GoogleCloudAiplatformV1beta1MeasurementMetricResponse>,
            List<Map<String, dynamic>>
          >(
            metrics,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudAiplatformV1beta1MeasurementMetricResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'stepCount': stepCount,
    };
  }

  factory GoogleCloudAiplatformV1beta1MeasurementResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1MeasurementResponse(
      elapsedDuration: pulumi.Input.fromValue(map['elapsedDuration'] as String),
      metrics: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudAiplatformV1beta1MeasurementMetricResponse
        >(
          map['metrics']!,
          (value) =>
              GoogleCloudAiplatformV1beta1MeasurementMetricResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      stepCount: pulumi.Input.fromValue(map['stepCount'] as String),
    );
  }
}
