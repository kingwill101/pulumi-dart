// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodGroupResourceClaimStatus is stored in the PodGroupStatus for each PodGroupResourceClaim which references a ResourceClaimTemplate. It stores the generated name for the corresponding ResourceClaim.
class PodGroupResourceClaimStatusPatchSchedulingK8sIoV1alpha3 {
  /// name uniquely identifies this resource claim inside the PodGroup. This must match the name of an entry in podgroup.spec.resourceClaims, which implies that the string must be a DNS_LABEL.
  final pulumi.Input<String?>? name;
  /// resourceClaimName is the name of the ResourceClaim that was generated for the PodGroup in the namespace of the PodGroup. If this is unset, then generating a ResourceClaim was not necessary. The podgroup.spec.resourceClaims entry can be ignored in this case.
  final pulumi.Input<String?>? resourceClaimName;

  /// Creates a new [PodGroupResourceClaimStatusPatchSchedulingK8sIoV1alpha3].
  /// [name] name uniquely identifies this resource claim inside the PodGroup. This must match the name of an entry in podgroup.spec.resourceClaims, which implies that the string must be a DNS_LABEL.
  /// [resourceClaimName] resourceClaimName is the name of the ResourceClaim that was generated for the PodGroup in the namespace of the PodGroup. If this is unset, then generating a ResourceClaim was not necessary. The podgroup.spec.resourceClaims entry can be ignored in this case.
  const PodGroupResourceClaimStatusPatchSchedulingK8sIoV1alpha3({
    this.name,
    this.resourceClaimName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceClaimName': ?resourceClaimName,
    };
  }

  factory PodGroupResourceClaimStatusPatchSchedulingK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return PodGroupResourceClaimStatusPatchSchedulingK8sIoV1alpha3(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceClaimName: (() { final guardedValue = map['resourceClaimName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
