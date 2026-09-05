// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_gang_scheduling_policy_patch_scheduling_k8s_io_v1beta1.dart';

/// CompositePodGroupSchedulingPolicy defines the scheduling configuration for a CompositePodGroup. Exactly one policy must be set.
class CompositePodGroupSchedulingPolicyPatchSchedulingK8sIoV1beta1 {
  /// basic specifies that the groups of this composite group should be scheduled independently. This field is immutable.
  final pulumi.Input<Map<String, dynamic>?>? basic;
  /// gang specifies that the groups of this composite group should be scheduled using all-or-nothing semantics.
  final pulumi.Input<CompositeGangSchedulingPolicyPatchSchedulingK8sIoV1beta1?>? gang;

  /// Creates a new [CompositePodGroupSchedulingPolicyPatchSchedulingK8sIoV1beta1].
  /// [basic] basic specifies that the groups of this composite group should be scheduled independently. This field is immutable.
  /// [gang] gang specifies that the groups of this composite group should be scheduled using all-or-nothing semantics.
  const CompositePodGroupSchedulingPolicyPatchSchedulingK8sIoV1beta1({
    this.basic,
    this.gang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?basic,
      'gang': ?pulumi.Input.mapOptionalInputValue<CompositeGangSchedulingPolicyPatchSchedulingK8sIoV1beta1, Map<String, dynamic>>(gang, (value) => value.toMap()),
    };
  }

  factory CompositePodGroupSchedulingPolicyPatchSchedulingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CompositePodGroupSchedulingPolicyPatchSchedulingK8sIoV1beta1(
      basic: (() { final guardedValue = map['basic']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      gang: (() { final guardedValue = map['gang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompositeGangSchedulingPolicyPatchSchedulingK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
