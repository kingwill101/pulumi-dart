// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_target.dart';

/// ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
class ResourceMetricSource {
  /// name is the name of the resource in question.
  final pulumi.Input<String> name;

  /// target specifies the target value for the given metric
  final pulumi.Input<MetricTarget> target;

  /// Creates a new [ResourceMetricSource].
  /// [name] name is the name of the resource in question.
  /// [target] target specifies the target value for the given metric
  ResourceMetricSource({required this.name, required this.target});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'target': pulumi.Input.mapInputValue<MetricTarget, Map<String, dynamic>>(
        target,
        (value) => value.toMap(),
      ),
    };
  }

  factory ResourceMetricSource.fromMap(Map<String, dynamic> map) {
    return ResourceMetricSource(
      name: pulumi.Input.fromValue(map['name'] as String),
      target: pulumi.Input.fromValue(
        MetricTarget.fromMap((map['target']! as Map).cast<String, dynamic>()),
      ),
    );
  }
}
