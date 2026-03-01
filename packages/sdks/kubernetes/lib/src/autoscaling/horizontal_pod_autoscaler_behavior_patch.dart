// ignore_for_file: unused_element, unnecessary_cast

import 'hpascaling_rules_patch.dart';

/// HorizontalPodAutoscalerBehavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively).
class HorizontalPodAutoscalerBehaviorPatch {
  /// scaleDown is scaling policy for scaling Down. If not set, the default value is to allow to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the highest recommendation for the last 300sec is used).
  final HPAScalingRulesPatch? scaleDown;
  /// scaleUp is scaling policy for scaling Up. If not set, the default value is the higher of:
  /// * increase no more than 4 pods per 60 seconds
  /// * double the number of pods per 60 seconds
  /// No stabilization is used.
  final HPAScalingRulesPatch? scaleUp;

  /// Creates a new [HorizontalPodAutoscalerBehaviorPatch].
  /// [scaleDown] scaleDown is scaling policy for scaling Down. If not set, the default value is to allow to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the highest recommendation for the last 300sec is used).
  /// [scaleUp] scaleUp is scaling policy for scaling Up. If not set, the default value is the higher of:
  HorizontalPodAutoscalerBehaviorPatch({
    this.scaleDown,
    this.scaleUp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleDown': ?scaleDown == null ? null : scaleDown!.toMap(),
      'scaleUp': ?scaleUp == null ? null : scaleUp!.toMap(),
    };
  }

  factory HorizontalPodAutoscalerBehaviorPatch.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerBehaviorPatch(
      scaleDown: map['scaleDown'] == null ? null : HPAScalingRulesPatch.fromMap((map['scaleDown'] as Map).cast<String, dynamic>()),
      scaleUp: map['scaleUp'] == null ? null : HPAScalingRulesPatch.fromMap((map['scaleUp'] as Map).cast<String, dynamic>()),
    );
  }
}

