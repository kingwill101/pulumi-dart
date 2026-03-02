// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceClaimSchedulingStatus contains information about one particular ResourceClaim with "WaitForFirstConsumer" allocation mode.
class ResourceClaimSchedulingStatus {
  /// Name matches the pod.spec.resourceClaims[*].Name field.
  final pulumi.Input<String>? name;
  /// UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.
  ///
  /// The size of this field is limited to 128, the same as for PodSchedulingSpec.PotentialNodes. This may get increased in the future, but not reduced.
  final pulumi.Input<List<String>>? unsuitableNodes;

  /// Creates a new [ResourceClaimSchedulingStatus].
  /// [name] Name matches the pod.spec.resourceClaims[*].Name field.
  /// [unsuitableNodes] UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.
  ResourceClaimSchedulingStatus({
    this.name,
    this.unsuitableNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'unsuitableNodes': ?unsuitableNodes,
    };
  }

  factory ResourceClaimSchedulingStatus.fromMap(Map<String, dynamic> map) {
    return ResourceClaimSchedulingStatus(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      unsuitableNodes: map['unsuitableNodes'] == null ? null : ((map['unsuitableNodes'] as List).cast<String>()).input(),
    );
  }
}

