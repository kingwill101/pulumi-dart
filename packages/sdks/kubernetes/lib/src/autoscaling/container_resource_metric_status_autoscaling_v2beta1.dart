// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing a single container in each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ContainerResourceMetricStatusAutoscalingV2beta1 {
  /// container is the name of the container in the pods of the scaling target
  final pulumi.Input<String> container;

  /// currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.
  final pulumi.Input<int>? currentAverageUtilization;

  /// currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type. It will always be set, regardless of the corresponding metric specification.
  final pulumi.Input<String> currentAverageValue;

  /// name is the name of the resource in question.
  final pulumi.Input<String> name;

  /// Creates a new [ContainerResourceMetricStatusAutoscalingV2beta1].
  /// [container] container is the name of the container in the pods of the scaling target
  /// [currentAverageUtilization] currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.
  /// [currentAverageValue] currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type. It will always be set, regardless of the corresponding metric specification.
  /// [name] name is the name of the resource in question.
  ContainerResourceMetricStatusAutoscalingV2beta1({
    required this.container,
    this.currentAverageUtilization,
    required this.currentAverageValue,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'currentAverageUtilization': ?currentAverageUtilization,
      'currentAverageValue': currentAverageValue,
      'name': name,
    };
  }

  factory ContainerResourceMetricStatusAutoscalingV2beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContainerResourceMetricStatusAutoscalingV2beta1(
      container: pulumi.Input.fromValue(map['container'] as String),
      currentAverageUtilization: (() {
        final guardedValue = map['currentAverageUtilization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      currentAverageValue: pulumi.Input.fromValue(
        map['currentAverageValue'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
