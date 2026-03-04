// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_group_policy_patch.dart';

/// PodGroup represents a set of pods with a common scheduling policy.
class PodGroupPatch {
  /// Name is a unique identifier for the PodGroup within the Workload. It must be a DNS label. This field is immutable.
  final pulumi.Input<String>? name;

  /// Policy defines the scheduling policy for this PodGroup.
  final pulumi.Input<PodGroupPolicyPatch>? policy;

  /// Creates a new [PodGroupPatch].
  /// [name] Name is a unique identifier for the PodGroup within the Workload. It must be a DNS label. This field is immutable.
  /// [policy] Policy defines the scheduling policy for this PodGroup.
  PodGroupPatch({this.name, this.policy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            PodGroupPolicyPatch,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
    };
  }

  factory PodGroupPatch.fromMap(Map<String, dynamic> map) {
    return PodGroupPatch(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PodGroupPolicyPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
