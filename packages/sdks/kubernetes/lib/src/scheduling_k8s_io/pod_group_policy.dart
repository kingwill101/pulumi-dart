// ignore_for_file: unused_element, unnecessary_cast

import 'gang_scheduling_policy.dart';

/// PodGroupPolicy defines the scheduling configuration for a PodGroup.
class PodGroupPolicy {
  /// Basic specifies that the pods in this group should be scheduled using standard Kubernetes scheduling behavior.
  final Map<String, dynamic>? basic;
  /// Gang specifies that the pods in this group should be scheduled using all-or-nothing semantics.
  final GangSchedulingPolicy? gang;

  /// Creates a new [PodGroupPolicy].
  /// [basic] Basic specifies that the pods in this group should be scheduled using standard Kubernetes scheduling behavior.
  /// [gang] Gang specifies that the pods in this group should be scheduled using all-or-nothing semantics.
  PodGroupPolicy({
    this.basic,
    this.gang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?basic,
      'gang': ?gang == null ? null : gang!.toMap(),
    };
  }

  factory PodGroupPolicy.fromMap(Map<String, dynamic> map) {
    return PodGroupPolicy(
      basic: map['basic'] == null ? null : (map['basic'] as Map).cast<String, dynamic>(),
      gang: map['gang'] == null ? null : GangSchedulingPolicy.fromMap((map['gang'] as Map).cast<String, dynamic>()),
    );
  }
}

