// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodFailurePolicyOnPodConditionsPattern describes a pattern for matching an actual pod condition type.
class PodFailurePolicyOnPodConditionsPatternPatch {
  /// Specifies the required Pod condition status. To match a pod condition it is required that the specified status equals the pod condition status. Defaults to True.
  final pulumi.Input<String>? status;
  /// Specifies the required Pod condition type. To match a pod condition it is required that specified type equals the pod condition type.
  final pulumi.Input<String>? type;

  /// Creates a new [PodFailurePolicyOnPodConditionsPatternPatch].
  /// [status] Specifies the required Pod condition status. To match a pod condition it is required that the specified status equals the pod condition status. Defaults to True.
  /// [type] Specifies the required Pod condition type. To match a pod condition it is required that specified type equals the pod condition type.
  PodFailurePolicyOnPodConditionsPatternPatch({
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'type': ?type,
    };
  }

  factory PodFailurePolicyOnPodConditionsPatternPatch.fromMap(Map<String, dynamic> map) {
    return PodFailurePolicyOnPodConditionsPatternPatch(
      status: map['status'] == null ? null : (map['status']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

