// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_node_config_guest_accelerator_gpu_driver_installation_config.dart';
import 'cluster_node_pool_node_config_guest_accelerator_gpu_sharing_config.dart';

class ClusterNodePoolNodeConfigGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final pulumi.Input<int> count;
  /// Configuration for auto installation of GPU driver. Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig>? gpuDriverInstallationConfig;
  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig [user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final pulumi.Input<String>? gpuPartitionSize;
  /// Configuration for GPU sharing. Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig>? gpuSharingConfig;
  /// The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  final pulumi.Input<String> type;

  /// Creates a new [ClusterNodePoolNodeConfigGuestAccelerator].
  /// [count] The number of the guest accelerator cards exposed to this instance.
  /// [gpuDriverInstallationConfig] Configuration for auto installation of GPU driver. Structure is documented below.
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig [user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  /// [gpuSharingConfig] Configuration for GPU sharing. Structure is documented below.
  /// [type] The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  const ClusterNodePoolNodeConfigGuestAccelerator({
    required this.count,
    this.gpuDriverInstallationConfig,
    this.gpuPartitionSize,
    this.gpuSharingConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'gpuDriverInstallationConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig, Map<String, dynamic>>(gpuDriverInstallationConfig, (value) => value.toMap()),
      'gpuPartitionSize': ?gpuPartitionSize,
      'gpuSharingConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig, Map<String, dynamic>>(gpuSharingConfig, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ClusterNodePoolNodeConfigGuestAccelerator.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigGuestAccelerator(
      count: pulumi.Input.fromValue(map['count'] as int),
      gpuDriverInstallationConfig: (() { final guardedValue = map['gpuDriverInstallationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gpuPartitionSize: (() { final guardedValue = map['gpuPartitionSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gpuSharingConfig: (() { final guardedValue = map['gpuSharingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

