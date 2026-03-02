// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_value_status_patch.dart';

/// ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ResourceMetricStatusPatch {
  /// current contains the current value for the given metric
  final pulumi.Input<MetricValueStatusPatch>? current;
  /// name is the name of the resource in question.
  final pulumi.Input<String>? name;

  /// Creates a new [ResourceMetricStatusPatch].
  /// [current] current contains the current value for the given metric
  /// [name] name is the name of the resource in question.
  ResourceMetricStatusPatch({
    this.current,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': ?pulumi.Input.mapOptionalInputValue<MetricValueStatusPatch, Map<String, dynamic>>(current, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory ResourceMetricStatusPatch.fromMap(Map<String, dynamic> map) {
    return ResourceMetricStatusPatch(
      current: map['current'] == null ? null : (MetricValueStatusPatch.fromMap((map['current']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

