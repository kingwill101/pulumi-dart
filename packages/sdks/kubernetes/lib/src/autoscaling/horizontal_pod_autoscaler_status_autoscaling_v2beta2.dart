// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'horizontal_pod_autoscaler_condition_autoscaling_v2beta2.dart';
import 'metric_status_autoscaling_v2beta2.dart';

/// HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
class HorizontalPodAutoscalerStatusAutoscalingV2beta2 {
  /// conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
  final pulumi.Input<List<HorizontalPodAutoscalerConditionAutoscalingV2beta2>> conditions;
  /// currentMetrics is the last read state of the metrics used by this autoscaler.
  final pulumi.Input<List<MetricStatusAutoscalingV2beta2>>? currentMetrics;
  /// currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
  final pulumi.Input<int> currentReplicas;
  /// desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
  final pulumi.Input<int> desiredReplicas;
  /// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
  final pulumi.Input<String>? lastScaleTime;
  /// observedGeneration is the most recent generation observed by this autoscaler.
  final pulumi.Input<int>? observedGeneration;

  /// Creates a new [HorizontalPodAutoscalerStatusAutoscalingV2beta2].
  /// [conditions] conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
  /// [currentMetrics] currentMetrics is the last read state of the metrics used by this autoscaler.
  /// [currentReplicas] currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
  /// [desiredReplicas] desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
  /// [lastScaleTime] lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
  /// [observedGeneration] observedGeneration is the most recent generation observed by this autoscaler.
  HorizontalPodAutoscalerStatusAutoscalingV2beta2({
    required this.conditions,
    this.currentMetrics,
    required this.currentReplicas,
    required this.desiredReplicas,
    this.lastScaleTime,
    this.observedGeneration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<HorizontalPodAutoscalerConditionAutoscalingV2beta2>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<HorizontalPodAutoscalerConditionAutoscalingV2beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'currentMetrics': ?pulumi.Input.mapOptionalInputValue<List<MetricStatusAutoscalingV2beta2>, List<Map<String, dynamic>>>(currentMetrics, (value) => pulumi.Input.encodeList<MetricStatusAutoscalingV2beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'currentReplicas': currentReplicas,
      'desiredReplicas': desiredReplicas,
      'lastScaleTime': ?lastScaleTime,
      'observedGeneration': ?observedGeneration,
    };
  }

  factory HorizontalPodAutoscalerStatusAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerStatusAutoscalingV2beta2(
      conditions: (pulumi.Input.decodeList<HorizontalPodAutoscalerConditionAutoscalingV2beta2>(map['conditions'], (value) => HorizontalPodAutoscalerConditionAutoscalingV2beta2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      currentMetrics: map['currentMetrics'] == null ? null : (pulumi.Input.decodeList<MetricStatusAutoscalingV2beta2>(map['currentMetrics'], (value) => MetricStatusAutoscalingV2beta2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      currentReplicas: (map['currentReplicas'] as int).input(),
      desiredReplicas: (map['desiredReplicas'] as int).input(),
      lastScaleTime: map['lastScaleTime'] == null ? null : (map['lastScaleTime'] as String).input(),
      observedGeneration: map['observedGeneration'] == null ? null : (map['observedGeneration'] as int).input(),
    );
  }
}

