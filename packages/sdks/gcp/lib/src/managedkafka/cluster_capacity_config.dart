// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterCapacityConfig {
  /// The memory to provision for the cluster in bytes. The value must be between 1 GiB and 8 GiB per vCPU. Ex. 1024Mi, 4Gi.
  final pulumi.Input<String> memoryBytes;
  /// The number of vCPUs to provision for the cluster. The minimum is 3.
  final pulumi.Input<String> vcpuCount;

  /// Creates a new [ClusterCapacityConfig].
  /// [memoryBytes] The memory to provision for the cluster in bytes. The value must be between 1 GiB and 8 GiB per vCPU. Ex. 1024Mi, 4Gi.
  /// [vcpuCount] The number of vCPUs to provision for the cluster. The minimum is 3.
  const ClusterCapacityConfig({
    required this.memoryBytes,
    required this.vcpuCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memoryBytes': memoryBytes,
      'vcpuCount': vcpuCount,
    };
  }

  factory ClusterCapacityConfig.fromMap(Map<String, dynamic> map) {
    return ClusterCapacityConfig(
      memoryBytes: pulumi.Input.fromValue(map['memoryBytes'] as String),
      vcpuCount: pulumi.Input.fromValue(map['vcpuCount'] as String),
    );
  }
}
