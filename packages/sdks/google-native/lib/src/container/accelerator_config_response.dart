// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gpudriver_installation_config_response.dart';
import 'gpusharing_config_response.dart';

/// AcceleratorConfig represents a Hardware Accelerator request.
class AcceleratorConfigResponse {
  /// The number of the accelerator cards exposed to an instance.
  final pulumi.Input<String> acceleratorCount;
  /// The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)
  final pulumi.Input<String> acceleratorType;
  /// The configuration for auto installation of GPU driver.
  final pulumi.Input<GPUDriverInstallationConfigResponse> gpuDriverInstallationConfig;
  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final pulumi.Input<String> gpuPartitionSize;
  /// The configuration for GPU sharing options.
  final pulumi.Input<GPUSharingConfigResponse> gpuSharingConfig;

  /// Creates a new [AcceleratorConfigResponse].
  /// [acceleratorCount] The number of the accelerator cards exposed to an instance.
  /// [acceleratorType] The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)
  /// [gpuDriverInstallationConfig] The configuration for auto installation of GPU driver.
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  /// [gpuSharingConfig] The configuration for GPU sharing options.
  const AcceleratorConfigResponse({
    required this.acceleratorCount,
    required this.acceleratorType,
    required this.gpuDriverInstallationConfig,
    required this.gpuPartitionSize,
    required this.gpuSharingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': acceleratorCount,
      'acceleratorType': acceleratorType,
      'gpuDriverInstallationConfig': pulumi.Input.mapInputValue<GPUDriverInstallationConfigResponse, Map<String, dynamic>>(gpuDriverInstallationConfig, (value) => value.toMap()),
      'gpuPartitionSize': gpuPartitionSize,
      'gpuSharingConfig': pulumi.Input.mapInputValue<GPUSharingConfigResponse, Map<String, dynamic>>(gpuSharingConfig, (value) => value.toMap()),
    };
  }

  factory AcceleratorConfigResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponse(
      acceleratorCount: pulumi.Input.fromValue(map['acceleratorCount'] as String),
      acceleratorType: pulumi.Input.fromValue(map['acceleratorType'] as String),
      gpuDriverInstallationConfig: pulumi.Input.fromValue(GPUDriverInstallationConfigResponse.fromMap((map['gpuDriverInstallationConfig']! as Map).cast<String, dynamic>())),
      gpuPartitionSize: pulumi.Input.fromValue(map['gpuPartitionSize'] as String),
      gpuSharingConfig: pulumi.Input.fromValue(GPUSharingConfigResponse.fromMap((map['gpuSharingConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

