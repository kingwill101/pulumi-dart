// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodFailurePolicyOnPodConditionsPattern describes a pattern for matching an actual pod condition type.
class PodFailurePolicyOnPodConditionsPattern {
  /// Specifies the required Pod condition status. To match a pod condition it is required that the specified status equals the pod condition status. Defaults to True.
  final pulumi.Input<String>? status;
  /// Specifies the required Pod condition type. To match a pod condition it is required that specified type equals the pod condition type.
  final pulumi.Input<String> type;

  /// Creates a new [PodFailurePolicyOnPodConditionsPattern].
  /// [status] Specifies the required Pod condition status. To match a pod condition it is required that the specified status equals the pod condition status. Defaults to True.
  /// [type] Specifies the required Pod condition type. To match a pod condition it is required that specified type equals the pod condition type.
  const PodFailurePolicyOnPodConditionsPattern({
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'type': type,
    };
  }

  factory PodFailurePolicyOnPodConditionsPattern.fromMap(Map<String, dynamic> map) {
    return PodFailurePolicyOnPodConditionsPattern(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
