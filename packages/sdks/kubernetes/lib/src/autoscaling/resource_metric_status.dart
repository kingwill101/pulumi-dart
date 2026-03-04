// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_value_status.dart';

/// ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ResourceMetricStatus {
  /// current contains the current value for the given metric
  final pulumi.Input<MetricValueStatus> current;

  /// name is the name of the resource in question.
  final pulumi.Input<String> name;

  /// Creates a new [ResourceMetricStatus].
  /// [current] current contains the current value for the given metric
  /// [name] name is the name of the resource in question.
  ResourceMetricStatus({required this.current, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current':
          pulumi.Input.mapInputValue<MetricValueStatus, Map<String, dynamic>>(
            current,
            (value) => value.toMap(),
          ),
      'name': name,
    };
  }

  factory ResourceMetricStatus.fromMap(Map<String, dynamic> map) {
    return ResourceMetricStatus(
      current: pulumi.Input.fromValue(
        MetricValueStatus.fromMap(
          (map['current']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
