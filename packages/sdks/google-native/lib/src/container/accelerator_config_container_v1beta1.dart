// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gpudriver_installation_config_container_v1beta1.dart';
import 'gpusharing_config_container_v1beta1.dart';

/// AcceleratorConfig represents a Hardware Accelerator request.
class AcceleratorConfigContainerV1beta1 {
  /// The number of the accelerator cards exposed to an instance.
  final pulumi.Input<String>? acceleratorCount;
  /// The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)
  final pulumi.Input<String>? acceleratorType;
  /// The configuration for auto installation of GPU driver.
  final pulumi.Input<GPUDriverInstallationConfigContainerV1beta1>? gpuDriverInstallationConfig;
  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final pulumi.Input<String>? gpuPartitionSize;
  /// The configuration for GPU sharing options.
  final pulumi.Input<GPUSharingConfigContainerV1beta1>? gpuSharingConfig;
  /// The number of time-shared GPU resources to expose for each physical GPU.
  final pulumi.Input<String>? maxTimeSharedClientsPerGpu;

  /// Creates a new [AcceleratorConfigContainerV1beta1].
  /// [acceleratorCount] The number of the accelerator cards exposed to an instance.
  /// [acceleratorType] The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)
  /// [gpuDriverInstallationConfig] The configuration for auto installation of GPU driver.
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  /// [gpuSharingConfig] The configuration for GPU sharing options.
  /// [maxTimeSharedClientsPerGpu] The number of time-shared GPU resources to expose for each physical GPU.
  AcceleratorConfigContainerV1beta1({
    this.acceleratorCount,
    this.acceleratorType,
    this.gpuDriverInstallationConfig,
    this.gpuPartitionSize,
    this.gpuSharingConfig,
    this.maxTimeSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
      'gpuDriverInstallationConfig': ?pulumi.Input.mapOptionalInputValue<GPUDriverInstallationConfigContainerV1beta1, Map<String, dynamic>>(gpuDriverInstallationConfig, (value) => value.toMap()),
      'gpuPartitionSize': ?gpuPartitionSize,
      'gpuSharingConfig': ?pulumi.Input.mapOptionalInputValue<GPUSharingConfigContainerV1beta1, Map<String, dynamic>>(gpuSharingConfig, (value) => value.toMap()),
      'maxTimeSharedClientsPerGpu': ?maxTimeSharedClientsPerGpu,
    };
  }

  factory AcceleratorConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigContainerV1beta1(
      acceleratorCount: (() { final guardedValue = map['acceleratorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gpuDriverInstallationConfig: (() { final guardedValue = map['gpuDriverInstallationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GPUDriverInstallationConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gpuPartitionSize: (() { final guardedValue = map['gpuPartitionSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gpuSharingConfig: (() { final guardedValue = map['gpuSharingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GPUSharingConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxTimeSharedClientsPerGpu: (() { final guardedValue = map['maxTimeSharedClientsPerGpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

