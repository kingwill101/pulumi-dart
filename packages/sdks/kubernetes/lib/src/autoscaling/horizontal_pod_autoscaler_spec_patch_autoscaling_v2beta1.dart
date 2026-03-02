// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_version_object_reference_patch_autoscaling_v2beta1.dart';
import 'metric_spec_patch_autoscaling_v2beta1.dart';

/// HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
class HorizontalPodAutoscalerSpecPatchAutoscalingV2beta1 {
  /// maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
  final pulumi.Input<int>? maxReplicas;
  /// metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond.
  final pulumi.Input<List<MetricSpecPatchAutoscalingV2beta1>>? metrics;
  /// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  final pulumi.Input<int>? minReplicas;
  /// scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
  final pulumi.Input<CrossVersionObjectReferencePatchAutoscalingV2beta1>? scaleTargetRef;

  /// Creates a new [HorizontalPodAutoscalerSpecPatchAutoscalingV2beta1].
  /// [maxReplicas] maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
  /// [metrics] metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond.
  /// [minReplicas] minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  /// [scaleTargetRef] scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
  HorizontalPodAutoscalerSpecPatchAutoscalingV2beta1({
    this.maxReplicas,
    this.metrics,
    this.minReplicas,
    this.scaleTargetRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': ?maxReplicas,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<MetricSpecPatchAutoscalingV2beta1>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<MetricSpecPatchAutoscalingV2beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minReplicas': ?minReplicas,
      'scaleTargetRef': ?pulumi.Input.mapOptionalInputValue<CrossVersionObjectReferencePatchAutoscalingV2beta1, Map<String, dynamic>>(scaleTargetRef, (value) => value.toMap()),
    };
  }

  factory HorizontalPodAutoscalerSpecPatchAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerSpecPatchAutoscalingV2beta1(
      maxReplicas: map['maxReplicas'] == null ? null : (map['maxReplicas']! as int).input(),
      metrics: map['metrics'] == null ? null : (pulumi.Input.decodeList<MetricSpecPatchAutoscalingV2beta1>(map['metrics']!, (value) => MetricSpecPatchAutoscalingV2beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      minReplicas: map['minReplicas'] == null ? null : (map['minReplicas']! as int).input(),
      scaleTargetRef: map['scaleTargetRef'] == null ? null : (CrossVersionObjectReferencePatchAutoscalingV2beta1.fromMap((map['scaleTargetRef']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

