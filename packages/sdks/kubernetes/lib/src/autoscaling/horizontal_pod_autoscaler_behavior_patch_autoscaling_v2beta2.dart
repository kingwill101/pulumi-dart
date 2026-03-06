// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hpascaling_rules_patch_autoscaling_v2beta2.dart';

/// HorizontalPodAutoscalerBehavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively).
class HorizontalPodAutoscalerBehaviorPatchAutoscalingV2beta2 {
  /// scaleDown is scaling policy for scaling Down. If not set, the default value is to allow to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the highest recommendation for the last 300sec is used).
  final pulumi.Input<HPAScalingRulesPatchAutoscalingV2beta2>? scaleDown;
  /// scaleUp is scaling policy for scaling Up. If not set, the default value is the higher of:
  /// * increase no more than 4 pods per 60 seconds
  /// * double the number of pods per 60 seconds
  /// No stabilization is used.
  final pulumi.Input<HPAScalingRulesPatchAutoscalingV2beta2>? scaleUp;

  /// Creates a new [HorizontalPodAutoscalerBehaviorPatchAutoscalingV2beta2].
  /// [scaleDown] scaleDown is scaling policy for scaling Down. If not set, the default value is to allow to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the highest recommendation for the last 300sec is used).
  /// [scaleUp] scaleUp is scaling policy for scaling Up. If not set, the default value is the higher of:
  const HorizontalPodAutoscalerBehaviorPatchAutoscalingV2beta2({
    this.scaleDown,
    this.scaleUp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleDown': ?pulumi.Input.mapOptionalInputValue<HPAScalingRulesPatchAutoscalingV2beta2, Map<String, dynamic>>(scaleDown, (value) => value.toMap()),
      'scaleUp': ?pulumi.Input.mapOptionalInputValue<HPAScalingRulesPatchAutoscalingV2beta2, Map<String, dynamic>>(scaleUp, (value) => value.toMap()),
    };
  }

  factory HorizontalPodAutoscalerBehaviorPatchAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerBehaviorPatchAutoscalingV2beta2(
      scaleDown: (() { final guardedValue = map['scaleDown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HPAScalingRulesPatchAutoscalingV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scaleUp: (() { final guardedValue = map['scaleUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HPAScalingRulesPatchAutoscalingV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

