// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_version_object_reference_autoscaling_v2.dart';
import 'horizontal_pod_autoscaler_behavior.dart';
import 'metric_spec.dart';

/// HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
class HorizontalPodAutoscalerSpecAutoscalingV2 {
  /// behavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for scale up and scale down are used.
  final pulumi.Input<HorizontalPodAutoscalerBehavior?>? behavior;
  /// maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
  final pulumi.Input<int> maxReplicas;
  /// metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
  final pulumi.Input<List<MetricSpec>?>? metrics;
  /// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  final pulumi.Input<int?>? minReplicas;
  /// scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
  final pulumi.Input<CrossVersionObjectReferenceAutoscalingV2> scaleTargetRef;

  /// Creates a new [HorizontalPodAutoscalerSpecAutoscalingV2].
  /// [behavior] behavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for scale up and scale down are used.
  /// [maxReplicas] maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
  /// [metrics] metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
  /// [minReplicas] minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  /// [scaleTargetRef] scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
  const HorizontalPodAutoscalerSpecAutoscalingV2({
    this.behavior,
    required this.maxReplicas,
    this.metrics,
    this.minReplicas,
    required this.scaleTargetRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': ?pulumi.Input.mapOptionalInputValue<HorizontalPodAutoscalerBehavior, Map<String, dynamic>>(behavior, (value) => value.toMap()),
      'maxReplicas': maxReplicas,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<MetricSpec>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<MetricSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minReplicas': ?minReplicas,
      'scaleTargetRef': pulumi.Input.mapInputValue<CrossVersionObjectReferenceAutoscalingV2, Map<String, dynamic>>(scaleTargetRef, (value) => value.toMap()),
    };
  }

  factory HorizontalPodAutoscalerSpecAutoscalingV2.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerSpecAutoscalingV2(
      behavior: (() { final guardedValue = map['behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HorizontalPodAutoscalerBehavior.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxReplicas: pulumi.Input.fromValue((map['maxReplicas'] as num).toInt()),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetricSpec>(guardedValue, (value) => MetricSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      minReplicas: (() { final guardedValue = map['minReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      scaleTargetRef: pulumi.Input.fromValue(CrossVersionObjectReferenceAutoscalingV2.fromMap((map['scaleTargetRef']! as Map).cast<String, dynamic>())),
    );
  }
}
