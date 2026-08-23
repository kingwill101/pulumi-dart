// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_measurement_metric.dart';

/// A message representing a measurement.
class GoogleCloudMlV1Measurement {
  /// Provides a list of metrics that act as inputs into the objective function.
  final pulumi.Input<List<GoogleCloudMlV1MeasurementMetric>>? metrics;
  /// The number of steps a machine learning model has been trained for. Must be non-negative.
  final pulumi.Input<String>? stepCount;

  /// Creates a new [GoogleCloudMlV1Measurement].
  /// [metrics] Provides a list of metrics that act as inputs into the objective function.
  /// [stepCount] The number of steps a machine learning model has been trained for. Must be non-negative.
  const GoogleCloudMlV1Measurement({
    this.metrics,
    this.stepCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudMlV1MeasurementMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<GoogleCloudMlV1MeasurementMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stepCount': ?stepCount,
    };
  }

  factory GoogleCloudMlV1Measurement.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1Measurement(
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudMlV1MeasurementMetric>(guardedValue, (value) => GoogleCloudMlV1MeasurementMetric.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stepCount: (() { final guardedValue = map['stepCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
