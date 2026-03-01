// ignore_for_file: unused_element, unnecessary_cast

import 'gang_scheduling_policy_patch.dart';

/// PodGroupPolicy defines the scheduling configuration for a PodGroup.
class PodGroupPolicyPatch {
  /// Basic specifies that the pods in this group should be scheduled using standard Kubernetes scheduling behavior.
  final Map<String, dynamic>? basic;
  /// Gang specifies that the pods in this group should be scheduled using all-or-nothing semantics.
  final GangSchedulingPolicyPatch? gang;

  /// Creates a new [PodGroupPolicyPatch].
  /// [basic] Basic specifies that the pods in this group should be scheduled using standard Kubernetes scheduling behavior.
  /// [gang] Gang specifies that the pods in this group should be scheduled using all-or-nothing semantics.
  PodGroupPolicyPatch({
    this.basic,
    this.gang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?basic,
      'gang': ?gang == null ? null : gang!.toMap(),
    };
  }

  factory PodGroupPolicyPatch.fromMap(Map<String, dynamic> map) {
    return PodGroupPolicyPatch(
      basic: map['basic'] == null ? null : (map['basic'] as Map).cast<String, dynamic>(),
      gang: map['gang'] == null ? null : GangSchedulingPolicyPatch.fromMap((map['gang'] as Map).cast<String, dynamic>()),
    );
  }
}

