// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ResourceMetricStatusAutoscalingV2beta1 {
  /// currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.
  final pulumi.Input<int>? currentAverageUtilization;
  /// currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type. It will always be set, regardless of the corresponding metric specification.
  final pulumi.Input<String> currentAverageValue;
  /// name is the name of the resource in question.
  final pulumi.Input<String> name;

  /// Creates a new [ResourceMetricStatusAutoscalingV2beta1].
  /// [currentAverageUtilization] currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.
  /// [currentAverageValue] currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type. It will always be set, regardless of the corresponding metric specification.
  /// [name] name is the name of the resource in question.
  ResourceMetricStatusAutoscalingV2beta1({
    this.currentAverageUtilization,
    required this.currentAverageValue,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentAverageUtilization': ?currentAverageUtilization,
      'currentAverageValue': currentAverageValue,
      'name': name,
    };
  }

  factory ResourceMetricStatusAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return ResourceMetricStatusAutoscalingV2beta1(
      currentAverageUtilization: map['currentAverageUtilization'] == null ? null : (map['currentAverageUtilization'] as int).input(),
      currentAverageValue: (map['currentAverageValue'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

