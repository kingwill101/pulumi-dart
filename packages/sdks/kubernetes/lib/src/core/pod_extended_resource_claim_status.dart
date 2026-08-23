// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_extended_resource_request.dart';

/// PodExtendedResourceClaimStatus is stored in the PodStatus for the extended resource requests backed by DRA. It stores the generated name for the corresponding special ResourceClaim created by the scheduler.
class PodExtendedResourceClaimStatus {
  /// RequestMappings identifies the mapping of &lt;container, extended resource backed by DRA&gt; to  device request in the generated ResourceClaim.
  final pulumi.Input<List<ContainerExtendedResourceRequest>> requestMappings;
  /// ResourceClaimName is the name of the ResourceClaim that was generated for the Pod in the namespace of the Pod.
  final pulumi.Input<String> resourceClaimName;

  /// Creates a new [PodExtendedResourceClaimStatus].
  /// [requestMappings] RequestMappings identifies the mapping of &lt;container, extended resource backed by DRA&gt; to  device request in the generated ResourceClaim.
  /// [resourceClaimName] ResourceClaimName is the name of the ResourceClaim that was generated for the Pod in the namespace of the Pod.
  const PodExtendedResourceClaimStatus({
    required this.requestMappings,
    required this.resourceClaimName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestMappings': pulumi.Input.mapInputValue<List<ContainerExtendedResourceRequest>, List<Map<String, dynamic>>>(requestMappings, (value) => pulumi.Input.encodeList<ContainerExtendedResourceRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceClaimName': resourceClaimName,
    };
  }

  factory PodExtendedResourceClaimStatus.fromMap(Map<String, dynamic> map) {
    return PodExtendedResourceClaimStatus(
      requestMappings: pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerExtendedResourceRequest>(map['requestMappings']!, (value) => ContainerExtendedResourceRequest.fromMap((value as Map).cast<String, dynamic>()))),
      resourceClaimName: pulumi.Input.fromValue(map['resourceClaimName'] as String),
    );
  }
}
