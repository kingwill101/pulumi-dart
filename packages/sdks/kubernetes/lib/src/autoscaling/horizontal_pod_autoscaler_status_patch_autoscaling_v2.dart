// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'horizontal_pod_autoscaler_condition_patch.dart';
import 'metric_status_patch.dart';

/// HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
class HorizontalPodAutoscalerStatusPatchAutoscalingV2 {
  /// conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
  final List<HorizontalPodAutoscalerConditionPatch>? conditions;
  /// currentMetrics is the last read state of the metrics used by this autoscaler.
  final List<MetricStatusPatch>? currentMetrics;
  /// currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
  final int? currentReplicas;
  /// desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
  final int? desiredReplicas;
  /// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
  final String? lastScaleTime;
  /// observedGeneration is the most recent generation observed by this autoscaler.
  final int? observedGeneration;

  /// Creates a new [HorizontalPodAutoscalerStatusPatchAutoscalingV2].
  /// [conditions] conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
  /// [currentMetrics] currentMetrics is the last read state of the metrics used by this autoscaler.
  /// [currentReplicas] currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
  /// [desiredReplicas] desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
  /// [lastScaleTime] lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
  /// [observedGeneration] observedGeneration is the most recent generation observed by this autoscaler.
  HorizontalPodAutoscalerStatusPatchAutoscalingV2({
    this.conditions,
    this.currentMetrics,
    this.currentReplicas,
    this.desiredReplicas,
    this.lastScaleTime,
    this.observedGeneration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<HorizontalPodAutoscalerConditionPatch, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'currentMetrics': ?currentMetrics == null ? null : pulumi.Input.encodeList<MetricStatusPatch, Map<String, dynamic>>(currentMetrics!, (value) => value.toMap()),
      'currentReplicas': ?currentReplicas,
      'desiredReplicas': ?desiredReplicas,
      'lastScaleTime': ?lastScaleTime,
      'observedGeneration': ?observedGeneration,
    };
  }

  factory HorizontalPodAutoscalerStatusPatchAutoscalingV2.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerStatusPatchAutoscalingV2(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<HorizontalPodAutoscalerConditionPatch>(map['conditions'], (value) => HorizontalPodAutoscalerConditionPatch.fromMap((value as Map).cast<String, dynamic>())),
      currentMetrics: map['currentMetrics'] == null ? null : pulumi.Input.decodeList<MetricStatusPatch>(map['currentMetrics'], (value) => MetricStatusPatch.fromMap((value as Map).cast<String, dynamic>())),
      currentReplicas: map['currentReplicas'] == null ? null : map['currentReplicas'] as int,
      desiredReplicas: map['desiredReplicas'] == null ? null : map['desiredReplicas'] as int,
      lastScaleTime: map['lastScaleTime'] == null ? null : map['lastScaleTime'] as String,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
    );
  }
}

