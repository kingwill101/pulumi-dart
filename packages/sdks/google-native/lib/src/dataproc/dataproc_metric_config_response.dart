// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_response.dart';

/// Dataproc metric config.
class DataprocMetricConfigResponse {
  /// Metrics sources to enable.
  final pulumi.Input<List<MetricResponse>> metrics;

  /// Creates a new [DataprocMetricConfigResponse].
  /// [metrics] Metrics sources to enable.
  const DataprocMetricConfigResponse({
    required this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': pulumi.Input.mapInputValue<List<MetricResponse>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<MetricResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataprocMetricConfigResponse.fromMap(Map<String, dynamic> map) {
    return DataprocMetricConfigResponse(
      metrics: pulumi.Input.fromValue(pulumi.Input.decodeList<MetricResponse>(map['metrics']!, (value) => MetricResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
