// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gang_scheduling_policy_scheduling_k8s_io_v1alpha2.dart';

/// PodGroupSchedulingPolicy defines the scheduling configuration for a PodGroup. Exactly one policy must be set.
class PodGroupSchedulingPolicy {
  /// Basic specifies that the pods in this group should be scheduled using standard Kubernetes scheduling behavior.
  final pulumi.Input<Map<String, dynamic>?>? basic;
  /// Gang specifies that the pods in this group should be scheduled using all-or-nothing semantics.
  final pulumi.Input<GangSchedulingPolicySchedulingK8sIoV1alpha2?>? gang;

  /// Creates a new [PodGroupSchedulingPolicy].
  /// [basic] Basic specifies that the pods in this group should be scheduled using standard Kubernetes scheduling behavior.
  /// [gang] Gang specifies that the pods in this group should be scheduled using all-or-nothing semantics.
  const PodGroupSchedulingPolicy({
    this.basic,
    this.gang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?basic,
      'gang': ?pulumi.Input.mapOptionalInputValue<GangSchedulingPolicySchedulingK8sIoV1alpha2, Map<String, dynamic>>(gang, (value) => value.toMap()),
    };
  }

  factory PodGroupSchedulingPolicy.fromMap(Map<String, dynamic> map) {
    return PodGroupSchedulingPolicy(
      basic: (() { final guardedValue = map['basic']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      gang: (() { final guardedValue = map['gang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GangSchedulingPolicySchedulingK8sIoV1alpha2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
