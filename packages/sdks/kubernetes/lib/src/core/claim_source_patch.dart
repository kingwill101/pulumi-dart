// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ClaimSource describes a reference to a ResourceClaim.
///
/// Exactly one of these fields should be set.  Consumers of this type must treat an empty object as if it has an unknown value.
class ClaimSourcePatch {
  /// ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod.
  final pulumi.Input<String>? resourceClaimName;
  /// ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this pod.
  ///
  /// The template will be used to create a new ResourceClaim, which will be bound to this pod. When this pod is deleted, the ResourceClaim will also be deleted. The name of the ResourceClaim will be &lt;pod name&gt;-&lt;resource name&gt;, where &lt;resource name&gt; is the PodResourceClaim.Name. Pod validation will reject the pod if the concatenated name is not valid for a ResourceClaim (e.g. too long).
  ///
  /// An existing ResourceClaim with that name that is not owned by the pod will not be used for the pod to avoid using an unrelated resource by mistake. Scheduling and pod startup are then blocked until the unrelated ResourceClaim is removed.
  ///
  /// This field is immutable and no changes will be made to the corresponding ResourceClaim by the control plane after creating the ResourceClaim.
  final pulumi.Input<String>? resourceClaimTemplateName;

  /// Creates a new [ClaimSourcePatch].
  /// [resourceClaimName] ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod.
  /// [resourceClaimTemplateName] ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this pod.
  ClaimSourcePatch({
    this.resourceClaimName,
    this.resourceClaimTemplateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceClaimName': ?resourceClaimName,
      'resourceClaimTemplateName': ?resourceClaimTemplateName,
    };
  }

  factory ClaimSourcePatch.fromMap(Map<String, dynamic> map) {
    return ClaimSourcePatch(
      resourceClaimName: (() { final guardedValue = map['resourceClaimName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceClaimTemplateName: (() { final guardedValue = map['resourceClaimTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

