// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'claim_source.dart';

/// PodResourceClaim references exactly one ResourceClaim, either directly or by naming a ResourceClaimTemplate which is then turned into a ResourceClaim for the pod.
///
/// It adds a name to it that uniquely identifies the ResourceClaim inside the Pod. Containers that need access to the ResourceClaim reference it with this name.
class PodResourceClaim {
  /// Name uniquely identifies this resource claim inside the pod. This must be a DNS_LABEL.
  final pulumi.Input<String> name;
  /// ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod.
  ///
  /// Exactly one of ResourceClaimName and ResourceClaimTemplateName must be set.
  final pulumi.Input<String>? resourceClaimName;
  /// ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this pod.
  ///
  /// The template will be used to create a new ResourceClaim, which will be bound to this pod. When this pod is deleted, the ResourceClaim will also be deleted. The pod name and resource name, along with a generated component, will be used to form a unique name for the ResourceClaim, which will be recorded in pod.status.resourceClaimStatuses.
  ///
  /// This field is immutable and no changes will be made to the corresponding ResourceClaim by the control plane after creating the ResourceClaim.
  ///
  /// Exactly one of ResourceClaimName and ResourceClaimTemplateName must be set.
  final pulumi.Input<String>? resourceClaimTemplateName;
  /// Source describes where to find the ResourceClaim.
  final pulumi.Input<ClaimSource>? source;

  /// Creates a new [PodResourceClaim].
  /// [name] Name uniquely identifies this resource claim inside the pod. This must be a DNS_LABEL.
  /// [resourceClaimName] ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod.
  /// [resourceClaimTemplateName] ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this pod.
  /// [source] Source describes where to find the ResourceClaim.
  PodResourceClaim({
    required this.name,
    this.resourceClaimName,
    this.resourceClaimTemplateName,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceClaimName': ?resourceClaimName,
      'resourceClaimTemplateName': ?resourceClaimTemplateName,
      'source': ?pulumi.Input.mapOptionalInputValue<ClaimSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory PodResourceClaim.fromMap(Map<String, dynamic> map) {
    return PodResourceClaim(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceClaimName: (() { final guardedValue = map['resourceClaimName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceClaimTemplateName: (() { final guardedValue = map['resourceClaimTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClaimSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

