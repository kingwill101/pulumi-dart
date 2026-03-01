// ignore_for_file: unused_element, unnecessary_cast


/// ContainerExtendedResourceRequest has the mapping of container name, extended resource name to the device request name.
class ContainerExtendedResourceRequest {
  /// The name of the container requesting resources.
  final String containerName;
  /// The name of the request in the special ResourceClaim which corresponds to the extended resource.
  final String requestName;
  /// The name of the extended resource in that container which gets backed by DRA.
  final String resourceName;

  /// Creates a new [ContainerExtendedResourceRequest].
  /// [containerName] The name of the container requesting resources.
  /// [requestName] The name of the request in the special ResourceClaim which corresponds to the extended resource.
  /// [resourceName] The name of the extended resource in that container which gets backed by DRA.
  ContainerExtendedResourceRequest({
    required this.containerName,
    required this.requestName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'requestName': requestName,
      'resourceName': resourceName,
    };
  }

  factory ContainerExtendedResourceRequest.fromMap(Map<String, dynamic> map) {
    return ContainerExtendedResourceRequest(
      containerName: map['containerName'] as String,
      requestName: map['requestName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

