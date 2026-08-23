// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gpudriver_installation_config_response_container_v1beta1.dart';
import 'gpusharing_config_response_container_v1beta1.dart';

/// AcceleratorConfig represents a Hardware Accelerator request.
class AcceleratorConfigResponseContainerV1beta1 {
  /// The number of the accelerator cards exposed to an instance.
  final pulumi.Input<String> acceleratorCount;
  /// The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)
  final pulumi.Input<String> acceleratorType;
  /// The configuration for auto installation of GPU driver.
  final pulumi.Input<GPUDriverInstallationConfigResponseContainerV1beta1> gpuDriverInstallationConfig;
  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final pulumi.Input<String> gpuPartitionSize;
  /// The configuration for GPU sharing options.
  final pulumi.Input<GPUSharingConfigResponseContainerV1beta1> gpuSharingConfig;
  /// The number of time-shared GPU resources to expose for each physical GPU.
  final pulumi.Input<String> maxTimeSharedClientsPerGpu;

  /// Creates a new [AcceleratorConfigResponseContainerV1beta1].
  /// [acceleratorCount] The number of the accelerator cards exposed to an instance.
  /// [acceleratorType] The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)
  /// [gpuDriverInstallationConfig] The configuration for auto installation of GPU driver.
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  /// [gpuSharingConfig] The configuration for GPU sharing options.
  /// [maxTimeSharedClientsPerGpu] The number of time-shared GPU resources to expose for each physical GPU.
  const AcceleratorConfigResponseContainerV1beta1({
    required this.acceleratorCount,
    required this.acceleratorType,
    required this.gpuDriverInstallationConfig,
    required this.gpuPartitionSize,
    required this.gpuSharingConfig,
    required this.maxTimeSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': acceleratorCount,
      'acceleratorType': acceleratorType,
      'gpuDriverInstallationConfig': pulumi.Input.mapInputValue<GPUDriverInstallationConfigResponseContainerV1beta1, Map<String, dynamic>>(gpuDriverInstallationConfig, (value) => value.toMap()),
      'gpuPartitionSize': gpuPartitionSize,
      'gpuSharingConfig': pulumi.Input.mapInputValue<GPUSharingConfigResponseContainerV1beta1, Map<String, dynamic>>(gpuSharingConfig, (value) => value.toMap()),
      'maxTimeSharedClientsPerGpu': maxTimeSharedClientsPerGpu,
    };
  }

  factory AcceleratorConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponseContainerV1beta1(
      acceleratorCount: pulumi.Input.fromValue(map['acceleratorCount'] as String),
      acceleratorType: pulumi.Input.fromValue(map['acceleratorType'] as String),
      gpuDriverInstallationConfig: pulumi.Input.fromValue(GPUDriverInstallationConfigResponseContainerV1beta1.fromMap((map['gpuDriverInstallationConfig']! as Map).cast<String, dynamic>())),
      gpuPartitionSize: pulumi.Input.fromValue(map['gpuPartitionSize'] as String),
      gpuSharingConfig: pulumi.Input.fromValue(GPUSharingConfigResponseContainerV1beta1.fromMap((map['gpuSharingConfig']! as Map).cast<String, dynamic>())),
      maxTimeSharedClientsPerGpu: pulumi.Input.fromValue(map['maxTimeSharedClientsPerGpu'] as String),
    );
  }
}
