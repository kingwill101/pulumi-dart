// ignore_for_file: unused_element, unnecessary_cast


class ConnectClusterCapacityConfig {
  /// The memory to provision for the cluster in bytes. The CPU:memory ratio (vCPU:GiB) must be between 1:1 and 1:8. Minimum: 3221225472 (3 GiB).
  final String memoryBytes;
  /// The number of vCPUs to provision for the cluster. The minimum is 3.
  final String vcpuCount;

  /// Creates a new [ConnectClusterCapacityConfig].
  /// [memoryBytes] The memory to provision for the cluster in bytes. The CPU:memory ratio (vCPU:GiB) must be between 1:1 and 1:8. Minimum: 3221225472 (3 GiB).
  /// [vcpuCount] The number of vCPUs to provision for the cluster. The minimum is 3.
  ConnectClusterCapacityConfig({
    required this.memoryBytes,
    required this.vcpuCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memoryBytes': memoryBytes,
      'vcpuCount': vcpuCount,
    };
  }

  factory ConnectClusterCapacityConfig.fromMap(Map<String, dynamic> map) {
    return ConnectClusterCapacityConfig(
      memoryBytes: map['memoryBytes'] as String,
      vcpuCount: map['vcpuCount'] as String,
    );
  }
}

