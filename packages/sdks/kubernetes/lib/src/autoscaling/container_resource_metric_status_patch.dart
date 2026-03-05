// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_value_status_patch.dart';

/// ContainerResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing a single container in each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ContainerResourceMetricStatusPatch {
  /// container is the name of the container in the pods of the scaling target
  final pulumi.Input<String>? container;
  /// current contains the current value for the given metric
  final pulumi.Input<MetricValueStatusPatch>? current;
  /// name is the name of the resource in question.
  final pulumi.Input<String>? name;

  /// Creates a new [ContainerResourceMetricStatusPatch].
  /// [container] container is the name of the container in the pods of the scaling target
  /// [current] current contains the current value for the given metric
  /// [name] name is the name of the resource in question.
  ContainerResourceMetricStatusPatch({
    this.container,
    this.current,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?container,
      'current': ?pulumi.Input.mapOptionalInputValue<MetricValueStatusPatch, Map<String, dynamic>>(current, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory ContainerResourceMetricStatusPatch.fromMap(Map<String, dynamic> map) {
    return ContainerResourceMetricStatusPatch(
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      current: (() { final guardedValue = map['current']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricValueStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

