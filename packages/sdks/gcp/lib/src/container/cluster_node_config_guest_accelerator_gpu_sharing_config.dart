// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigGuestAcceleratorGpuSharingConfig {
  /// The type of GPU sharing strategy to enable on the GPU node.
  /// Accepted values are:
  /// * `"TIME_SHARING"`: Allow multiple containers to have [time-shared](https://cloud.google.com/kubernetes-engine/docs/concepts/timesharing-gpus) access to a single GPU device.
  /// * `"MPS"`: Enable co-operative multi-process CUDA workloads to run concurrently on a single GPU device with [MPS](https://cloud.google.com/kubernetes-engine/docs/how-to/nvidia-mps-gpus)
  final pulumi.Input<String> gpuSharingStrategy;
  /// The maximum number of containers that can share a GPU.
  final pulumi.Input<int> maxSharedClientsPerGpu;

  /// Creates a new [ClusterNodeConfigGuestAcceleratorGpuSharingConfig].
  /// [gpuSharingStrategy] The type of GPU sharing strategy to enable on the GPU node.
  /// [maxSharedClientsPerGpu] The maximum number of containers that can share a GPU.
  ClusterNodeConfigGuestAcceleratorGpuSharingConfig({
    required this.gpuSharingStrategy,
    required this.maxSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuSharingStrategy': gpuSharingStrategy,
      'maxSharedClientsPerGpu': maxSharedClientsPerGpu,
    };
  }

  factory ClusterNodeConfigGuestAcceleratorGpuSharingConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigGuestAcceleratorGpuSharingConfig(
      gpuSharingStrategy: pulumi.Input.fromValue(map['gpuSharingStrategy'] as String),
      maxSharedClientsPerGpu: pulumi.Input.fromValue(map['maxSharedClientsPerGpu'] as int),
    );
  }
}

