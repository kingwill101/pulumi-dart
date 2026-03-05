// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceClaimSchedulingStatus contains information about one particular ResourceClaim with "WaitForFirstConsumer" allocation mode.
class ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha3 {
  /// Name matches the pod.spec.resourceClaims[*].Name field.
  final pulumi.Input<String>? name;
  /// UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.
  ///
  /// The size of this field is limited to 128, the same as for PodSchedulingSpec.PotentialNodes. This may get increased in the future, but not reduced.
  final pulumi.Input<List<String>>? unsuitableNodes;

  /// Creates a new [ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha3].
  /// [name] Name matches the pod.spec.resourceClaims[*].Name field.
  /// [unsuitableNodes] UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.
  ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha3({
    this.name,
    this.unsuitableNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'unsuitableNodes': ?unsuitableNodes,
    };
  }

  factory ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha3(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unsuitableNodes: (() { final guardedValue = map['unsuitableNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

