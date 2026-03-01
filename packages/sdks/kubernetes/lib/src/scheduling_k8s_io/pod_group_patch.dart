// ignore_for_file: unused_element, unnecessary_cast

import 'pod_group_policy_patch.dart';

/// PodGroup represents a set of pods with a common scheduling policy.
class PodGroupPatch {
  /// Name is a unique identifier for the PodGroup within the Workload. It must be a DNS label. This field is immutable.
  final String? name;
  /// Policy defines the scheduling policy for this PodGroup.
  final PodGroupPolicyPatch? policy;

  /// Creates a new [PodGroupPatch].
  /// [name] Name is a unique identifier for the PodGroup within the Workload. It must be a DNS label. This field is immutable.
  /// [policy] Policy defines the scheduling policy for this PodGroup.
  PodGroupPatch({
    this.name,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'policy': ?policy == null ? null : policy!.toMap(),
    };
  }

  factory PodGroupPatch.fromMap(Map<String, dynamic> map) {
    return PodGroupPatch(
      name: map['name'] == null ? null : map['name'] as String,
      policy: map['policy'] == null ? null : PodGroupPolicyPatch.fromMap((map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}

