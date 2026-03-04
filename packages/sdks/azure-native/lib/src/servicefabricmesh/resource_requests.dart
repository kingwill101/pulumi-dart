// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This type describes the requested resources for a given container. It describes the least amount of resources required for the container. A container can consume more than requested resources up to the specified limits before being restarted. Currently, the requested resources are treated as limits.
class ResourceRequests {
  /// Requested number of CPU cores. At present, only full cores are supported.
  final pulumi.Input<double> cpu;

  /// The memory request in GB for this container.
  final pulumi.Input<double> memoryInGB;

  /// Creates a new [ResourceRequests].
  /// [cpu] Requested number of CPU cores. At present, only full cores are supported.
  /// [memoryInGB] The memory request in GB for this container.
  ResourceRequests({required this.cpu, required this.memoryInGB});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpu': cpu, 'memoryInGB': memoryInGB};
  }

  factory ResourceRequests.fromMap(Map<String, dynamic> map) {
    return ResourceRequests(
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      memoryInGB: pulumi.Input.fromValue(map['memoryInGB'] as double),
    );
  }
}
