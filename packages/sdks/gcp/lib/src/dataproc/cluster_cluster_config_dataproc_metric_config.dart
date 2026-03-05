// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_dataproc_metric_config_metric.dart';

class ClusterClusterConfigDataprocMetricConfig {
  /// Metrics sources to enable.
  final pulumi.Input<List<ClusterClusterConfigDataprocMetricConfigMetric>> metrics;

  /// Creates a new [ClusterClusterConfigDataprocMetricConfig].
  /// [metrics] Metrics sources to enable.
  ClusterClusterConfigDataprocMetricConfig({
    required this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': pulumi.Input.mapInputValue<List<ClusterClusterConfigDataprocMetricConfigMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<ClusterClusterConfigDataprocMetricConfigMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterClusterConfigDataprocMetricConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigDataprocMetricConfig(
      metrics: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterConfigDataprocMetricConfigMetric>(map['metrics']!, (value) => ClusterClusterConfigDataprocMetricConfigMetric.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

