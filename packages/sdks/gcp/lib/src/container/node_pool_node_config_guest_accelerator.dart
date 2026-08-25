// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_guest_accelerator_gpu_driver_installation_config.dart';
import 'node_pool_node_config_guest_accelerator_gpu_sharing_config.dart';

class NodePoolNodeConfigGuestAccelerator {
  /// The number of the accelerator cards exposed to an instance.
  final pulumi.Input<int> count;
  /// Configuration for auto installation of GPU driver.
  final pulumi.Input<NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig?>? gpuDriverInstallationConfig;
  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning)
  final pulumi.Input<String?>? gpuPartitionSize;
  /// Configuration for GPU sharing.
  final pulumi.Input<NodePoolNodeConfigGuestAcceleratorGpuSharingConfig?>? gpuSharingConfig;
  /// The accelerator type resource name.
  final pulumi.Input<String> type;

  /// Creates a new [NodePoolNodeConfigGuestAccelerator].
  /// [count] The number of the accelerator cards exposed to an instance.
  /// [gpuDriverInstallationConfig] Configuration for auto installation of GPU driver.
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning)
  /// [gpuSharingConfig] Configuration for GPU sharing.
  /// [type] The accelerator type resource name.
  const NodePoolNodeConfigGuestAccelerator({
    required this.count,
    this.gpuDriverInstallationConfig,
    this.gpuPartitionSize,
    this.gpuSharingConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'gpuDriverInstallationConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig, Map<String, dynamic>>(gpuDriverInstallationConfig, (value) => value.toMap()),
      'gpuPartitionSize': ?gpuPartitionSize,
      'gpuSharingConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigGuestAcceleratorGpuSharingConfig, Map<String, dynamic>>(gpuSharingConfig, (value) => value.toMap()),
      'type': type,
    };
  }

  factory NodePoolNodeConfigGuestAccelerator.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigGuestAccelerator(
      count: pulumi.Input.fromValue((map['count'] as num).toInt()),
      gpuDriverInstallationConfig: (() { final guardedValue = map['gpuDriverInstallationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gpuPartitionSize: (() { final guardedValue = map['gpuPartitionSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gpuSharingConfig: (() { final guardedValue = map['gpuSharingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigGuestAcceleratorGpuSharingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
