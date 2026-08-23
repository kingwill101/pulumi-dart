// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This type describes the requested resources for a given container. It describes the least amount of resources required for the container. A container can consume more than requested resources up to the specified limits before being restarted. Currently, the requested resources are treated as limits.
class ResourceRequestsResponse {
  /// Requested number of CPU cores. At present, only full cores are supported.
  final pulumi.Input<double> cpu;
  /// The memory request in GB for this container.
  final pulumi.Input<double> memoryInGB;

  /// Creates a new [ResourceRequestsResponse].
  /// [cpu] Requested number of CPU cores. At present, only full cores are supported.
  /// [memoryInGB] The memory request in GB for this container.
  const ResourceRequestsResponse({
    required this.cpu,
    required this.memoryInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'memoryInGB': memoryInGB,
    };
  }

  factory ResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRequestsResponse(
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      memoryInGB: pulumi.Input.fromValue(map['memoryInGB'] as double),
    );
  }
}
