// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// current status of a horizontal pod autoscaler
class HorizontalPodAutoscalerStatusPatch {
  /// currentCPUUtilizationPercentage is the current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
  final pulumi.Input<int>? currentCPUUtilizationPercentage;
  /// currentReplicas is the current number of replicas of pods managed by this autoscaler.
  final pulumi.Input<int>? currentReplicas;
  /// desiredReplicas is the  desired number of replicas of pods managed by this autoscaler.
  final pulumi.Input<int>? desiredReplicas;
  /// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
  final pulumi.Input<String>? lastScaleTime;
  /// observedGeneration is the most recent generation observed by this autoscaler.
  final pulumi.Input<int>? observedGeneration;

  /// Creates a new [HorizontalPodAutoscalerStatusPatch].
  /// [currentCPUUtilizationPercentage] currentCPUUtilizationPercentage is the current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
  /// [currentReplicas] currentReplicas is the current number of replicas of pods managed by this autoscaler.
  /// [desiredReplicas] desiredReplicas is the  desired number of replicas of pods managed by this autoscaler.
  /// [lastScaleTime] lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
  /// [observedGeneration] observedGeneration is the most recent generation observed by this autoscaler.
  HorizontalPodAutoscalerStatusPatch({
    this.currentCPUUtilizationPercentage,
    this.currentReplicas,
    this.desiredReplicas,
    this.lastScaleTime,
    this.observedGeneration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentCPUUtilizationPercentage': ?currentCPUUtilizationPercentage,
      'currentReplicas': ?currentReplicas,
      'desiredReplicas': ?desiredReplicas,
      'lastScaleTime': ?lastScaleTime,
      'observedGeneration': ?observedGeneration,
    };
  }

  factory HorizontalPodAutoscalerStatusPatch.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerStatusPatch(
      currentCPUUtilizationPercentage: map['currentCPUUtilizationPercentage'] == null ? null : (map['currentCPUUtilizationPercentage']! as int).input(),
      currentReplicas: map['currentReplicas'] == null ? null : (map['currentReplicas']! as int).input(),
      desiredReplicas: map['desiredReplicas'] == null ? null : (map['desiredReplicas']! as int).input(),
      lastScaleTime: map['lastScaleTime'] == null ? null : (map['lastScaleTime']! as String).input(),
      observedGeneration: map['observedGeneration'] == null ? null : (map['observedGeneration']! as int).input(),
    );
  }
}

