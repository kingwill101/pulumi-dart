// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gang_scheduling_policy_patch_scheduling_k8s_io_v1alpha3.dart';

/// PodGroupSchedulingPolicy defines the scheduling configuration for a PodGroup. Exactly one policy must be set. The policy is chosen at creation time by setting either the Basic or Gang field. The PodGroup may not change policy after creation. Fields within chosen policy may be updated after creation when their individual fields allow it.
class PodGroupSchedulingPolicyPatchSchedulingK8sIoV1alpha3 {
  /// basic specifies that the pods in this group should be scheduled using standard Kubernetes scheduling behavior. Setting this field at group creation time opts this group to basic scheduling; this field cannot be changed afterward.
  final pulumi.Input<Map<String, dynamic>?>? basic;
  /// gang specifies that the pods in this group should be scheduled using all-or-nothing semantics. Setting this field at group creation time opts this group to gang scheduling; this field cannot be set or unset afterward. The minCount field within Gang scheduling policy remains mutable after group creation.
  final pulumi.Input<GangSchedulingPolicyPatchSchedulingK8sIoV1alpha3?>? gang;

  /// Creates a new [PodGroupSchedulingPolicyPatchSchedulingK8sIoV1alpha3].
  /// [basic] basic specifies that the pods in this group should be scheduled using standard Kubernetes scheduling behavior. Setting this field at group creation time opts this group to basic scheduling; this field cannot be changed afterward.
  /// [gang] gang specifies that the pods in this group should be scheduled using all-or-nothing semantics. Setting this field at group creation time opts this group to gang scheduling; this field cannot be set or unset afterward. The minCount field within Gang scheduling policy remains mutable after group creation.
  const PodGroupSchedulingPolicyPatchSchedulingK8sIoV1alpha3({
    this.basic,
    this.gang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?basic,
      'gang': ?pulumi.Input.mapOptionalInputValue<GangSchedulingPolicyPatchSchedulingK8sIoV1alpha3, Map<String, dynamic>>(gang, (value) => value.toMap()),
    };
  }

  factory PodGroupSchedulingPolicyPatchSchedulingK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return PodGroupSchedulingPolicyPatchSchedulingK8sIoV1alpha3(
      basic: (() { final guardedValue = map['basic']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      gang: (() { final guardedValue = map['gang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GangSchedulingPolicyPatchSchedulingK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
