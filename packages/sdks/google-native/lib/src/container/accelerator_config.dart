// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gpudriver_installation_config.dart';
import 'gpusharing_config.dart';

/// AcceleratorConfig represents a Hardware Accelerator request.
class AcceleratorConfig {
  /// The number of the accelerator cards exposed to an instance.
  final pulumi.Input<String>? acceleratorCount;
  /// The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)
  final pulumi.Input<String>? acceleratorType;
  /// The configuration for auto installation of GPU driver.
  final pulumi.Input<GPUDriverInstallationConfig>? gpuDriverInstallationConfig;
  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final pulumi.Input<String>? gpuPartitionSize;
  /// The configuration for GPU sharing options.
  final pulumi.Input<GPUSharingConfig>? gpuSharingConfig;

  /// Creates a new [AcceleratorConfig].
  /// [acceleratorCount] The number of the accelerator cards exposed to an instance.
  /// [acceleratorType] The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)
  /// [gpuDriverInstallationConfig] The configuration for auto installation of GPU driver.
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  /// [gpuSharingConfig] The configuration for GPU sharing options.
  AcceleratorConfig({
    this.acceleratorCount,
    this.acceleratorType,
    this.gpuDriverInstallationConfig,
    this.gpuPartitionSize,
    this.gpuSharingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
      'gpuDriverInstallationConfig': ?pulumi.Input.mapOptionalInputValue<GPUDriverInstallationConfig, Map<String, dynamic>>(gpuDriverInstallationConfig, (value) => value.toMap()),
      'gpuPartitionSize': ?gpuPartitionSize,
      'gpuSharingConfig': ?pulumi.Input.mapOptionalInputValue<GPUSharingConfig, Map<String, dynamic>>(gpuSharingConfig, (value) => value.toMap()),
    };
  }

  factory AcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfig(
      acceleratorCount: map['acceleratorCount'] == null ? null : (map['acceleratorCount']! as String).input(),
      acceleratorType: map['acceleratorType'] == null ? null : (map['acceleratorType']! as String).input(),
      gpuDriverInstallationConfig: map['gpuDriverInstallationConfig'] == null ? null : (GPUDriverInstallationConfig.fromMap((map['gpuDriverInstallationConfig']! as Map).cast<String, dynamic>())).input(),
      gpuPartitionSize: map['gpuPartitionSize'] == null ? null : (map['gpuPartitionSize']! as String).input(),
      gpuSharingConfig: map['gpuSharingConfig'] == null ? null : (GPUSharingConfig.fromMap((map['gpuSharingConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

