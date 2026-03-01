// ignore_for_file: unused_element, unnecessary_cast


/// ResourceClaimConsumerReference contains enough information to let you locate the consumer of a ResourceClaim. The user must be a resource in the same namespace as the ResourceClaim.
class ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha1 {
  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  final String? apiGroup;
  /// Name is the name of resource being referenced.
  final String? name;
  /// Resource is the type of resource being referenced, for example "pods".
  final String? resource;
  /// UID identifies exactly one incarnation of the resource.
  final String? uid;

  /// Creates a new [ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha1].
  /// [apiGroup] APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  /// [name] Name is the name of resource being referenced.
  /// [resource] Resource is the type of resource being referenced, for example "pods".
  /// [uid] UID identifies exactly one incarnation of the resource.
  ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha1({
    this.apiGroup,
    this.name,
    this.resource,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroup': ?apiGroup,
      'name': ?name,
      'resource': ?resource,
      'uid': ?uid,
    };
  }

  factory ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha1(
      apiGroup: map['apiGroup'] == null ? null : map['apiGroup'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}

