// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig {
  /// The type of GPU sharing strategy to enable on the GPU node. Possible values are described in the API package (https://pkg.go.dev/google.golang.org/api/container/v1#GPUSharingConfig)
  final pulumi.Input<String> gpuSharingStrategy;
  /// The maximum number of containers that can share a GPU.
  final pulumi.Input<int> maxSharedClientsPerGpu;

  /// Creates a new [GetClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig].
  /// [gpuSharingStrategy] The type of GPU sharing strategy to enable on the GPU node. Possible values are described in the API package (https://pkg.go.dev/google.golang.org/api/container/v1#GPUSharingConfig)
  /// [maxSharedClientsPerGpu] The maximum number of containers that can share a GPU.
  const GetClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig({
    required this.gpuSharingStrategy,
    required this.maxSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuSharingStrategy': gpuSharingStrategy,
      'maxSharedClientsPerGpu': maxSharedClientsPerGpu,
    };
  }

  factory GetClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig(
      gpuSharingStrategy: pulumi.Input.fromValue(map['gpuSharingStrategy'] as String),
      maxSharedClientsPerGpu: pulumi.Input.fromValue((map['maxSharedClientsPerGpu'] as num).toInt()),
    );
  }
}
