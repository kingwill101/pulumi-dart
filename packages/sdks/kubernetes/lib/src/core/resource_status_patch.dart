// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_health_patch.dart';

/// ResourceStatus represents the status of a single resource allocated to a Pod.
class ResourceStatusPatch {
  /// Name of the resource. Must be unique within the pod and in case of non-DRA resource, match one of the resources from the pod spec. For DRA resources, the value must be "claim:<claim_name>/<request>". When this status is reported about a container, the "claim_name" and "request" must match one of the claims of this container.
  final pulumi.Input<String>? name;
  /// List of unique resources health. Each element in the list contains an unique resource ID and its health. At a minimum, for the lifetime of a Pod, resource ID must uniquely identify the resource allocated to the Pod on the Node. If other Pod on the same Node reports the status with the same resource ID, it must be the same resource they share. See ResourceID type definition for a specific format it has in various use cases.
  final pulumi.Input<List<ResourceHealthPatch>>? resources;

  /// Creates a new [ResourceStatusPatch].
  /// [name] Name of the resource. Must be unique within the pod and in case of non-DRA resource, match one of the resources from the pod spec. For DRA resources, the value must be "claim:<claim_name>/<request>". When this status is reported about a container, the "claim_name" and "request" must match one of the claims of this container.
  /// [resources] List of unique resources health. Each element in the list contains an unique resource ID and its health. At a minimum, for the lifetime of a Pod, resource ID must uniquely identify the resource allocated to the Pod on the Node. If other Pod on the same Node reports the status with the same resource ID, it must be the same resource they share. See ResourceID type definition for a specific format it has in various use cases.
  ResourceStatusPatch({
    this.name,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<ResourceHealthPatch>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<ResourceHealthPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceStatusPatch.fromMap(Map<String, dynamic> map) {
    return ResourceStatusPatch(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resources: map['resources'] == null ? null : (pulumi.Input.decodeList<ResourceHealthPatch>(map['resources'], (value) => ResourceHealthPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

