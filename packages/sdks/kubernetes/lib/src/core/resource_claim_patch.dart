// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceClaim references one entry in PodSpec.ResourceClaims.
class ResourceClaimPatch {
  /// Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this field is used. It makes that resource available inside a container.
  final pulumi.Input<String?>? name;
  /// Request is the name chosen for a request in the referenced claim. If empty, everything from the claim is made available, otherwise only the result of this request.
  final pulumi.Input<String?>? request;

  /// Creates a new [ResourceClaimPatch].
  /// [name] Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this field is used. It makes that resource available inside a container.
  /// [request] Request is the name chosen for a request in the referenced claim. If empty, everything from the claim is made available, otherwise only the result of this request.
  const ResourceClaimPatch({
    this.name,
    this.request,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'request': ?request,
    };
  }

  factory ResourceClaimPatch.fromMap(Map<String, dynamic> map) {
    return ResourceClaimPatch(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
