// ignore_for_file: unused_element, unnecessary_cast

import 'metric_value_status.dart';

/// ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ResourceMetricStatus {
  /// current contains the current value for the given metric
  final MetricValueStatus current;
  /// name is the name of the resource in question.
  final String name;

  /// Creates a new [ResourceMetricStatus].
  /// [current] current contains the current value for the given metric
  /// [name] name is the name of the resource in question.
  ResourceMetricStatus({
    required this.current,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': current.toMap(),
      'name': name,
    };
  }

  factory ResourceMetricStatus.fromMap(Map<String, dynamic> map) {
    return ResourceMetricStatus(
      current: MetricValueStatus.fromMap((map['current'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

