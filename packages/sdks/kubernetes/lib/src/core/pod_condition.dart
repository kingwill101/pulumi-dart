// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodCondition contains details for the current condition of this pod.
class PodCondition {
  /// Last time we probed the condition.
  final pulumi.Input<String>? lastProbeTime;
  /// Last time the condition transitioned from one status to another.
  final pulumi.Input<String>? lastTransitionTime;
  /// Human-readable message indicating details about last transition.
  final pulumi.Input<String>? message;
  /// If set, this represents the .metadata.generation that the pod condition was set based upon. The PodObservedGenerationTracking feature gate must be enabled to use this field.
  final pulumi.Input<int>? observedGeneration;
  /// Unique, one-word, CamelCase reason for the condition's last transition.
  final pulumi.Input<String>? reason;
  /// Status is the status of the condition. Can be True, False, Unknown. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
  final pulumi.Input<String> status;
  /// Type is the type of the condition. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
  final pulumi.Input<String> type;

  /// Creates a new [PodCondition].
  /// [lastProbeTime] Last time we probed the condition.
  /// [lastTransitionTime] Last time the condition transitioned from one status to another.
  /// [message] Human-readable message indicating details about last transition.
  /// [observedGeneration] If set, this represents the .metadata.generation that the pod condition was set based upon. The PodObservedGenerationTracking feature gate must be enabled to use this field.
  /// [reason] Unique, one-word, CamelCase reason for the condition's last transition.
  /// [status] Status is the status of the condition. Can be True, False, Unknown. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
  /// [type] Type is the type of the condition. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
  PodCondition({
    this.lastProbeTime,
    this.lastTransitionTime,
    this.message,
    this.observedGeneration,
    this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastProbeTime': ?lastProbeTime,
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'observedGeneration': ?observedGeneration,
      'reason': ?reason,
      'status': status,
      'type': type,
    };
  }

  factory PodCondition.fromMap(Map<String, dynamic> map) {
    return PodCondition(
      lastProbeTime: map['lastProbeTime'] == null ? null : (map['lastProbeTime'] as String).input(),
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      observedGeneration: map['observedGeneration'] == null ? null : (map['observedGeneration'] as int).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

