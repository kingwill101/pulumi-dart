// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gpusharing_config_gpu_sharing_strategy_container_v1beta1.dart';

/// GPUSharingConfig represents the GPU sharing configuration for Hardware Accelerators.
class GPUSharingConfigContainerV1beta1 {
  /// The type of GPU sharing strategy to enable on the GPU node.
  final pulumi.Input<GPUSharingConfigGpuSharingStrategyContainerV1beta1>? gpuSharingStrategy;
  /// The max number of containers that can share a physical GPU.
  final pulumi.Input<String>? maxSharedClientsPerGpu;

  /// Creates a new [GPUSharingConfigContainerV1beta1].
  /// [gpuSharingStrategy] The type of GPU sharing strategy to enable on the GPU node.
  /// [maxSharedClientsPerGpu] The max number of containers that can share a physical GPU.
  const GPUSharingConfigContainerV1beta1({
    this.gpuSharingStrategy,
    this.maxSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuSharingStrategy': ?pulumi.Input.mapOptionalInputValue<GPUSharingConfigGpuSharingStrategyContainerV1beta1, String>(gpuSharingStrategy, (value) => value.wireValue),
      'maxSharedClientsPerGpu': ?maxSharedClientsPerGpu,
    };
  }

  factory GPUSharingConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GPUSharingConfigContainerV1beta1(
      gpuSharingStrategy: (() { final guardedValue = map['gpuSharingStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GPUSharingConfigGpuSharingStrategyContainerV1beta1.fromValue(guardedValue as String)); })(),
      maxSharedClientsPerGpu: (() { final guardedValue = map['maxSharedClientsPerGpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

