// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_version_object_reference_patch.dart';

/// specification of a horizontal pod autoscaler.
class HorizontalPodAutoscalerSpecPatch {
  /// maxReplicas is the upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
  final pulumi.Input<int>? maxReplicas;
  /// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  final pulumi.Input<int>? minReplicas;
  /// reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.
  final pulumi.Input<CrossVersionObjectReferencePatch>? scaleTargetRef;
  /// targetCPUUtilizationPercentage is the target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
  final pulumi.Input<int>? targetCPUUtilizationPercentage;

  /// Creates a new [HorizontalPodAutoscalerSpecPatch].
  /// [maxReplicas] maxReplicas is the upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
  /// [minReplicas] minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  /// [scaleTargetRef] reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.
  /// [targetCPUUtilizationPercentage] targetCPUUtilizationPercentage is the target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
  const HorizontalPodAutoscalerSpecPatch({
    this.maxReplicas,
    this.minReplicas,
    this.scaleTargetRef,
    this.targetCPUUtilizationPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
      'scaleTargetRef': ?pulumi.Input.mapOptionalInputValue<CrossVersionObjectReferencePatch, Map<String, dynamic>>(scaleTargetRef, (value) => value.toMap()),
      'targetCPUUtilizationPercentage': ?targetCPUUtilizationPercentage,
    };
  }

  factory HorizontalPodAutoscalerSpecPatch.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerSpecPatch(
      maxReplicas: (() { final guardedValue = map['maxReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minReplicas: (() { final guardedValue = map['minReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scaleTargetRef: (() { final guardedValue = map['scaleTargetRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CrossVersionObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetCPUUtilizationPercentage: (() { final guardedValue = map['targetCPUUtilizationPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
