// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_extended_resource_request_patch.dart';

/// PodExtendedResourceClaimStatus is stored in the PodStatus for the extended resource requests backed by DRA. It stores the generated name for the corresponding special ResourceClaim created by the scheduler.
class PodExtendedResourceClaimStatusPatch {
  /// RequestMappings identifies the mapping of &lt;container, extended resource backed by DRA&gt; to  device request in the generated ResourceClaim.
  final pulumi.Input<List<ContainerExtendedResourceRequestPatch>>?
  requestMappings;

  /// ResourceClaimName is the name of the ResourceClaim that was generated for the Pod in the namespace of the Pod.
  final pulumi.Input<String>? resourceClaimName;

  /// Creates a new [PodExtendedResourceClaimStatusPatch].
  /// [requestMappings] RequestMappings identifies the mapping of &lt;container, extended resource backed by DRA&gt; to  device request in the generated ResourceClaim.
  /// [resourceClaimName] ResourceClaimName is the name of the ResourceClaim that was generated for the Pod in the namespace of the Pod.
  PodExtendedResourceClaimStatusPatch({
    this.requestMappings,
    this.resourceClaimName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestMappings':
          ?pulumi.Input.mapOptionalInputValue<
            List<ContainerExtendedResourceRequestPatch>,
            List<Map<String, dynamic>>
          >(
            requestMappings,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerExtendedResourceRequestPatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceClaimName': ?resourceClaimName,
    };
  }

  factory PodExtendedResourceClaimStatusPatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return PodExtendedResourceClaimStatusPatch(
      requestMappings: (() {
        final guardedValue = map['requestMappings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ContainerExtendedResourceRequestPatch>(
            guardedValue,
            (value) => ContainerExtendedResourceRequestPatch.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceClaimName: (() {
        final guardedValue = map['resourceClaimName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
