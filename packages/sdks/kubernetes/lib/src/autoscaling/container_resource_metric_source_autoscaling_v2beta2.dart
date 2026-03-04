// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_target_autoscaling_v2beta2.dart';

/// ContainerResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
class ContainerResourceMetricSourceAutoscalingV2beta2 {
  /// container is the name of the container in the pods of the scaling target
  final pulumi.Input<String> container;

  /// name is the name of the resource in question.
  final pulumi.Input<String> name;

  /// target specifies the target value for the given metric
  final pulumi.Input<MetricTargetAutoscalingV2beta2> target;

  /// Creates a new [ContainerResourceMetricSourceAutoscalingV2beta2].
  /// [container] container is the name of the container in the pods of the scaling target
  /// [name] name is the name of the resource in question.
  /// [target] target specifies the target value for the given metric
  ContainerResourceMetricSourceAutoscalingV2beta2({
    required this.container,
    required this.name,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'name': name,
      'target':
          pulumi.Input.mapInputValue<
            MetricTargetAutoscalingV2beta2,
            Map<String, dynamic>
          >(target, (value) => value.toMap()),
    };
  }

  factory ContainerResourceMetricSourceAutoscalingV2beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContainerResourceMetricSourceAutoscalingV2beta2(
      container: pulumi.Input.fromValue(map['container'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      target: pulumi.Input.fromValue(
        MetricTargetAutoscalingV2beta2.fromMap(
          (map['target']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
