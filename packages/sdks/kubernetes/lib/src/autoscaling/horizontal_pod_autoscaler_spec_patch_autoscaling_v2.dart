// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_version_object_reference_patch_autoscaling_v2.dart';
import 'horizontal_pod_autoscaler_behavior_patch.dart';
import 'metric_spec_patch.dart';

/// HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
class HorizontalPodAutoscalerSpecPatchAutoscalingV2 {
  /// behavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for scale up and scale down are used.
  final pulumi.Input<HorizontalPodAutoscalerBehaviorPatch>? behavior;
  /// maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
  final pulumi.Input<int>? maxReplicas;
  /// metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
  final pulumi.Input<List<MetricSpecPatch>>? metrics;
  /// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  final pulumi.Input<int>? minReplicas;
  /// scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
  final pulumi.Input<CrossVersionObjectReferencePatchAutoscalingV2>? scaleTargetRef;

  /// Creates a new [HorizontalPodAutoscalerSpecPatchAutoscalingV2].
  /// [behavior] behavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for scale up and scale down are used.
  /// [maxReplicas] maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
  /// [metrics] metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
  /// [minReplicas] minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  /// [scaleTargetRef] scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
  const HorizontalPodAutoscalerSpecPatchAutoscalingV2({
    this.behavior,
    this.maxReplicas,
    this.metrics,
    this.minReplicas,
    this.scaleTargetRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': ?pulumi.Input.mapOptionalInputValue<HorizontalPodAutoscalerBehaviorPatch, Map<String, dynamic>>(behavior, (value) => value.toMap()),
      'maxReplicas': ?maxReplicas,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<MetricSpecPatch>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<MetricSpecPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minReplicas': ?minReplicas,
      'scaleTargetRef': ?pulumi.Input.mapOptionalInputValue<CrossVersionObjectReferencePatchAutoscalingV2, Map<String, dynamic>>(scaleTargetRef, (value) => value.toMap()),
    };
  }

  factory HorizontalPodAutoscalerSpecPatchAutoscalingV2.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerSpecPatchAutoscalingV2(
      behavior: (() { final guardedValue = map['behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HorizontalPodAutoscalerBehaviorPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxReplicas: (() { final guardedValue = map['maxReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetricSpecPatch>(guardedValue, (value) => MetricSpecPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      minReplicas: (() { final guardedValue = map['minReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scaleTargetRef: (() { final guardedValue = map['scaleTargetRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CrossVersionObjectReferencePatchAutoscalingV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
