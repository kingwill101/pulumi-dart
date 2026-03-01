// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodeConfigGuestAcceleratorGpuSharingConfig {
  /// The type of GPU sharing strategy to enable on the GPU node. Possible values are described in the API package (https://pkg.go.dev/google.golang.org/api/container/v1#GPUSharingConfig)
  final String gpuSharingStrategy;
  /// The maximum number of containers that can share a GPU.
  final int maxSharedClientsPerGpu;

  /// Creates a new [GetClusterNodeConfigGuestAcceleratorGpuSharingConfig].
  /// [gpuSharingStrategy] The type of GPU sharing strategy to enable on the GPU node. Possible values are described in the API package (https://pkg.go.dev/google.golang.org/api/container/v1#GPUSharingConfig)
  /// [maxSharedClientsPerGpu] The maximum number of containers that can share a GPU.
  GetClusterNodeConfigGuestAcceleratorGpuSharingConfig({
    required this.gpuSharingStrategy,
    required this.maxSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuSharingStrategy': gpuSharingStrategy,
      'maxSharedClientsPerGpu': maxSharedClientsPerGpu,
    };
  }

  factory GetClusterNodeConfigGuestAcceleratorGpuSharingConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigGuestAcceleratorGpuSharingConfig(
      gpuSharingStrategy: map['gpuSharingStrategy'] as String,
      maxSharedClientsPerGpu: map['maxSharedClientsPerGpu'] as int,
    );
  }
}

