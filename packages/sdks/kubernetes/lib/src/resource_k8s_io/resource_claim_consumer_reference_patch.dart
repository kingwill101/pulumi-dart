// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceClaimConsumerReference contains enough information to let you locate the consumer of a ResourceClaim. The user must be a resource in the same namespace as the ResourceClaim.
class ResourceClaimConsumerReferencePatch {
  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  final pulumi.Input<String>? apiGroup;
  /// Name is the name of resource being referenced.
  final pulumi.Input<String>? name;
  /// Resource is the type of resource being referenced, for example "pods".
  final pulumi.Input<String>? resource;
  /// UID identifies exactly one incarnation of the resource.
  final pulumi.Input<String>? uid;

  /// Creates a new [ResourceClaimConsumerReferencePatch].
  /// [apiGroup] APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  /// [name] Name is the name of resource being referenced.
  /// [resource] Resource is the type of resource being referenced, for example "pods".
  /// [uid] UID identifies exactly one incarnation of the resource.
  ResourceClaimConsumerReferencePatch({
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

  factory ResourceClaimConsumerReferencePatch.fromMap(Map<String, dynamic> map) {
    return ResourceClaimConsumerReferencePatch(
      apiGroup: map['apiGroup'] == null ? null : (map['apiGroup'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resource: map['resource'] == null ? null : (map['resource'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
    );
  }
}

