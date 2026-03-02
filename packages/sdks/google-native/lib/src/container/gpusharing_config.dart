// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gpusharing_config_gpu_sharing_strategy.dart';

/// GPUSharingConfig represents the GPU sharing configuration for Hardware Accelerators.
class GPUSharingConfig {
  /// The type of GPU sharing strategy to enable on the GPU node.
  final pulumi.Input<GPUSharingConfigGpuSharingStrategy>? gpuSharingStrategy;
  /// The max number of containers that can share a physical GPU.
  final pulumi.Input<String>? maxSharedClientsPerGpu;

  /// Creates a new [GPUSharingConfig].
  /// [gpuSharingStrategy] The type of GPU sharing strategy to enable on the GPU node.
  /// [maxSharedClientsPerGpu] The max number of containers that can share a physical GPU.
  GPUSharingConfig({
    this.gpuSharingStrategy,
    this.maxSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuSharingStrategy': ?pulumi.Input.mapOptionalInputValue<GPUSharingConfigGpuSharingStrategy, String>(gpuSharingStrategy, (value) => value.value),
      'maxSharedClientsPerGpu': ?maxSharedClientsPerGpu,
    };
  }

  factory GPUSharingConfig.fromMap(Map<String, dynamic> map) {
    return GPUSharingConfig(
      gpuSharingStrategy: map['gpuSharingStrategy'] == null ? null : (GPUSharingConfigGpuSharingStrategy.fromValue(map['gpuSharingStrategy'] as String)).input(),
      maxSharedClientsPerGpu: map['maxSharedClientsPerGpu'] == null ? null : (map['maxSharedClientsPerGpu'] as String).input(),
    );
  }
}

