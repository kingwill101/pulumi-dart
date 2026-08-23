// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodResourceClaimStatus is stored in the PodStatus for each PodResourceClaim which references a ResourceClaimTemplate. It stores the generated name for the corresponding ResourceClaim.
class PodResourceClaimStatus {
  /// Name uniquely identifies this resource claim inside the pod. This must match the name of an entry in pod.spec.resourceClaims, which implies that the string must be a DNS_LABEL.
  final pulumi.Input<String> name;
  /// ResourceClaimName is the name of the ResourceClaim that was generated for the Pod in the namespace of the Pod.
  ///
  /// When the DRAWorkloadResourceClaims feature is enabled and the corresponding PodResourceClaim matches a PodGroupResourceClaim made by the Pod's PodGroup, then this is the name of the ResourceClaim generated and reserved for the PodGroup.
  ///
  /// If this is unset, then generating a ResourceClaim was not necessary. The pod.spec.resourceClaims entry can be ignored in this case.
  final pulumi.Input<String>? resourceClaimName;

  /// Creates a new [PodResourceClaimStatus].
  /// [name] Name uniquely identifies this resource claim inside the pod. This must match the name of an entry in pod.spec.resourceClaims, which implies that the string must be a DNS_LABEL.
  /// [resourceClaimName] ResourceClaimName is the name of the ResourceClaim that was generated for the Pod in the namespace of the Pod.
  const PodResourceClaimStatus({
    required this.name,
    this.resourceClaimName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceClaimName': ?resourceClaimName,
    };
  }

  factory PodResourceClaimStatus.fromMap(Map<String, dynamic> map) {
    return PodResourceClaimStatus(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceClaimName: (() { final guardedValue = map['resourceClaimName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
