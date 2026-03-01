// ignore_for_file: unused_element, unnecessary_cast


/// ResourceClaimSchedulingStatus contains information about one particular ResourceClaim with "WaitForFirstConsumer" allocation mode.
class ResourceClaimSchedulingStatusResourceK8sIoV1alpha3 {
  /// Name matches the pod.spec.resourceClaims[*].Name field.
  final String name;
  /// UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.
  ///
  /// The size of this field is limited to 128, the same as for PodSchedulingSpec.PotentialNodes. This may get increased in the future, but not reduced.
  final List<String>? unsuitableNodes;

  /// Creates a new [ResourceClaimSchedulingStatusResourceK8sIoV1alpha3].
  /// [name] Name matches the pod.spec.resourceClaims[*].Name field.
  /// [unsuitableNodes] UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.
  ResourceClaimSchedulingStatusResourceK8sIoV1alpha3({
    required this.name,
    this.unsuitableNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'unsuitableNodes': ?unsuitableNodes,
    };
  }

  factory ResourceClaimSchedulingStatusResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return ResourceClaimSchedulingStatusResourceK8sIoV1alpha3(
      name: map['name'] as String,
      unsuitableNodes: map['unsuitableNodes'] == null ? null : (map['unsuitableNodes'] as List).cast<String>(),
    );
  }
}

