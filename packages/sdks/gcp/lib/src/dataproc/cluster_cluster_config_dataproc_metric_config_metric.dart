// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigDataprocMetricConfigMetric {
  /// One or more [available OSS metrics] (https://cloud.google.com/dataproc/docs/guides/monitoring#available_oss_metrics) to collect for the metric course.
  ///
  /// - - -
  final pulumi.Input<List<String>>? metricOverrides;
  /// A source for the collection of Dataproc OSS metrics (see [available OSS metrics](https://cloud.google.com//dataproc/docs/guides/monitoring#available_oss_metrics)).
  final pulumi.Input<String> metricSource;

  /// Creates a new [ClusterClusterConfigDataprocMetricConfigMetric].
  /// [metricOverrides] One or more [available OSS metrics] (https://cloud.google.com/dataproc/docs/guides/monitoring#available_oss_metrics) to collect for the metric course.
  /// [metricSource] A source for the collection of Dataproc OSS metrics (see [available OSS metrics](https://cloud.google.com//dataproc/docs/guides/monitoring#available_oss_metrics)).
  ClusterClusterConfigDataprocMetricConfigMetric({
    this.metricOverrides,
    required this.metricSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricOverrides': ?metricOverrides,
      'metricSource': metricSource,
    };
  }

  factory ClusterClusterConfigDataprocMetricConfigMetric.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigDataprocMetricConfigMetric(
      metricOverrides: map['metricOverrides'] == null ? null : ((map['metricOverrides']! as List).cast<String>()).input(),
      metricSource: (map['metricSource'] as String).input(),
    );
  }
}

