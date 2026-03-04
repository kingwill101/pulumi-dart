// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
class ResourceMetricSourcePatchAutoscalingV2beta1 {
  /// name is the name of the resource in question.
  final pulumi.Input<String>? name;

  /// targetAverageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
  final pulumi.Input<int>? targetAverageUtilization;

  /// targetAverageValue is the target value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type.
  final pulumi.Input<String>? targetAverageValue;

  /// Creates a new [ResourceMetricSourcePatchAutoscalingV2beta1].
  /// [name] name is the name of the resource in question.
  /// [targetAverageUtilization] targetAverageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
  /// [targetAverageValue] targetAverageValue is the target value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type.
  ResourceMetricSourcePatchAutoscalingV2beta1({
    this.name,
    this.targetAverageUtilization,
    this.targetAverageValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'targetAverageUtilization': ?targetAverageUtilization,
      'targetAverageValue': ?targetAverageValue,
    };
  }

  factory ResourceMetricSourcePatchAutoscalingV2beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceMetricSourcePatchAutoscalingV2beta1(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetAverageUtilization: (() {
        final guardedValue = map['targetAverageUtilization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      targetAverageValue: (() {
        final guardedValue = map['targetAverageValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
