// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_target_patch.dart';

/// ContainerResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
class ContainerResourceMetricSourcePatch {
  /// container is the name of the container in the pods of the scaling target
  final pulumi.Input<String>? container;

  /// name is the name of the resource in question.
  final pulumi.Input<String>? name;

  /// target specifies the target value for the given metric
  final pulumi.Input<MetricTargetPatch>? target;

  /// Creates a new [ContainerResourceMetricSourcePatch].
  /// [container] container is the name of the container in the pods of the scaling target
  /// [name] name is the name of the resource in question.
  /// [target] target specifies the target value for the given metric
  ContainerResourceMetricSourcePatch({this.container, this.name, this.target});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?container,
      'name': ?name,
      'target':
          ?pulumi.Input.mapOptionalInputValue<
            MetricTargetPatch,
            Map<String, dynamic>
          >(target, (value) => value.toMap()),
    };
  }

  factory ContainerResourceMetricSourcePatch.fromMap(Map<String, dynamic> map) {
    return ContainerResourceMetricSourcePatch(
      container: (() {
        final guardedValue = map['container'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetricTargetPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
