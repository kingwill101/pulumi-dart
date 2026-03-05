// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// current status of a horizontal pod autoscaler
class HorizontalPodAutoscalerStatus {
  /// currentCPUUtilizationPercentage is the current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
  final pulumi.Input<int>? currentCPUUtilizationPercentage;
  /// currentReplicas is the current number of replicas of pods managed by this autoscaler.
  final pulumi.Input<int> currentReplicas;
  /// desiredReplicas is the  desired number of replicas of pods managed by this autoscaler.
  final pulumi.Input<int> desiredReplicas;
  /// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
  final pulumi.Input<String>? lastScaleTime;
  /// observedGeneration is the most recent generation observed by this autoscaler.
  final pulumi.Input<int>? observedGeneration;

  /// Creates a new [HorizontalPodAutoscalerStatus].
  /// [currentCPUUtilizationPercentage] currentCPUUtilizationPercentage is the current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
  /// [currentReplicas] currentReplicas is the current number of replicas of pods managed by this autoscaler.
  /// [desiredReplicas] desiredReplicas is the  desired number of replicas of pods managed by this autoscaler.
  /// [lastScaleTime] lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
  /// [observedGeneration] observedGeneration is the most recent generation observed by this autoscaler.
  HorizontalPodAutoscalerStatus({
    this.currentCPUUtilizationPercentage,
    required this.currentReplicas,
    required this.desiredReplicas,
    this.lastScaleTime,
    this.observedGeneration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentCPUUtilizationPercentage': ?currentCPUUtilizationPercentage,
      'currentReplicas': currentReplicas,
      'desiredReplicas': desiredReplicas,
      'lastScaleTime': ?lastScaleTime,
      'observedGeneration': ?observedGeneration,
    };
  }

  factory HorizontalPodAutoscalerStatus.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerStatus(
      currentCPUUtilizationPercentage: (() { final guardedValue = map['currentCPUUtilizationPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      currentReplicas: pulumi.Input.fromValue(map['currentReplicas'] as int),
      desiredReplicas: pulumi.Input.fromValue(map['desiredReplicas'] as int),
      lastScaleTime: (() { final guardedValue = map['lastScaleTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

