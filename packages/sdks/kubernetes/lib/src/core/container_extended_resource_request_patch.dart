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
  const ContainerExtendedResourceRequestPatch({
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
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestName: (() { final guardedValue = map['requestName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

