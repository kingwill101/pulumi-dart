// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_value_status_autoscaling_v2beta2.dart';

/// ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ResourceMetricStatusAutoscalingV2beta2 {
  /// current contains the current value for the given metric
  final pulumi.Input<MetricValueStatusAutoscalingV2beta2> current;
  /// Name is the name of the resource in question.
  final pulumi.Input<String> name;

  /// Creates a new [ResourceMetricStatusAutoscalingV2beta2].
  /// [current] current contains the current value for the given metric
  /// [name] Name is the name of the resource in question.
  ResourceMetricStatusAutoscalingV2beta2({
    required this.current,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': pulumi.Input.mapInputValue<MetricValueStatusAutoscalingV2beta2, Map<String, dynamic>>(current, (value) => value.toMap()),
      'name': name,
    };
  }

  factory ResourceMetricStatusAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return ResourceMetricStatusAutoscalingV2beta2(
      current: (MetricValueStatusAutoscalingV2beta2.fromMap((map['current'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

