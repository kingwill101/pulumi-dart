// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodGroupResourceClaim references exactly one ResourceClaim, either directly or by naming a ResourceClaimTemplate which is then turned into a ResourceClaim for the PodGroup.
///
/// It adds a name to it that uniquely identifies the ResourceClaim inside the PodGroup. Pods that need access to the ResourceClaim define a matching reference in its own Spec.ResourceClaims. The Pod's claim must match all fields of the PodGroup's claim exactly.
class PodGroupResourceClaimPatchSchedulingK8sIoV1alpha3 {
  /// name uniquely identifies this resource claim inside the PodGroup. This must be a DNS_LABEL.
  final pulumi.Input<String?>? name;
  /// resourceClaimName is the name of a ResourceClaim object in the same namespace as this PodGroup. The ResourceClaim will be reserved for the PodGroup instead of its individual pods.
  ///
  /// Exactly one of ResourceClaimName and ResourceClaimTemplateName must be set.
  final pulumi.Input<String?>? resourceClaimName;
  /// resourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this PodGroup.
  ///
  /// The template will be used to create a new ResourceClaim, which will be bound to this PodGroup. When this PodGroup is deleted, the ResourceClaim will also be deleted. The PodGroup name and resource name, along with a generated component, will be used to form a unique name for the ResourceClaim, which will be recorded in podgroup.status.resourceClaimStatuses.
  ///
  /// This field is immutable and no changes will be made to the corresponding ResourceClaim by the control plane after creating the ResourceClaim.
  ///
  /// Exactly one of ResourceClaimName and ResourceClaimTemplateName must be set.
  final pulumi.Input<String?>? resourceClaimTemplateName;

  /// Creates a new [PodGroupResourceClaimPatchSchedulingK8sIoV1alpha3].
  /// [name] name uniquely identifies this resource claim inside the PodGroup. This must be a DNS_LABEL.
  /// [resourceClaimName] resourceClaimName is the name of a ResourceClaim object in the same namespace as this PodGroup. The ResourceClaim will be reserved for the PodGroup instead of its individual pods.
  /// [resourceClaimTemplateName] resourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this PodGroup.
  const PodGroupResourceClaimPatchSchedulingK8sIoV1alpha3({
    this.name,
    this.resourceClaimName,
    this.resourceClaimTemplateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceClaimName': ?resourceClaimName,
      'resourceClaimTemplateName': ?resourceClaimTemplateName,
    };
  }

  factory PodGroupResourceClaimPatchSchedulingK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return PodGroupResourceClaimPatchSchedulingK8sIoV1alpha3(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceClaimName: (() { final guardedValue = map['resourceClaimName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceClaimTemplateName: (() { final guardedValue = map['resourceClaimTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
