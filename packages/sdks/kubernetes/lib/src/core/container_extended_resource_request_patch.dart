// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerExtendedResourceRequest has the mapping of container name, extended resource name to the device request name.
class ContainerExtendedResourceRequestPatch {
  /// The name of the container requesting resources.
  final pulumi.Input<String>? containerName;
  /// The name of the request in the special ResourceClaim which corresponds to the extended resource.
  final pulumi.Input<String>? requestName;
  /// The name of the extended resource in that container which gets backed by DRA.
  final pulumi.Input<String>? resourceName;

  /// Creates a new [ContainerExtendedResourceRequestPatch].
  /// [containerName] The name of the container requesting resources.
  /// [requestName] The name of the request in the special ResourceClaim which corresponds to the extended resource.
  /// [resourceName] The name of the extended resource in that container which gets backed by DRA.
  ContainerExtendedResourceRequestPatch({
    this.containerName,
    this.requestName,
    this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'requestName': ?requestName,
      'resourceName': ?resourceName,
    };
  }

  factory ContainerExtendedResourceRequestPatch.fromMap(Map<String, dynamic> map) {
    return ContainerExtendedResourceRequestPatch(
      containerName: map['containerName'] == null ? null : (map['containerName']! as String).input(),
      requestName: map['requestName'] == null ? null : (map['requestName']! as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName']! as String).input(),
    );
  }
}

