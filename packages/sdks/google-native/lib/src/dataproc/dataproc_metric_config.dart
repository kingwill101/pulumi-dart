// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric.dart';

/// Dataproc metric config.
class DataprocMetricConfig {
  /// Metrics sources to enable.
  final pulumi.Input<List<Metric>> metrics;

  /// Creates a new [DataprocMetricConfig].
  /// [metrics] Metrics sources to enable.
  DataprocMetricConfig({
    required this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': pulumi.Input.mapInputValue<List<Metric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<Metric, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataprocMetricConfig.fromMap(Map<String, dynamic> map) {
    return DataprocMetricConfig(
      metrics: pulumi.Input.fromValue(pulumi.Input.decodeList<Metric>(map['metrics']!, (value) => Metric.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

