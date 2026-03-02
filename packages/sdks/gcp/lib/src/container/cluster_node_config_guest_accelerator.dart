// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_guest_accelerator_gpu_driver_installation_config.dart';
import 'cluster_node_config_guest_accelerator_gpu_sharing_config.dart';

class ClusterNodeConfigGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final pulumi.Input<int> count;
  /// Configuration for auto installation of GPU driver. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig>? gpuDriverInstallationConfig;
  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig [user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final pulumi.Input<String>? gpuPartitionSize;
  /// Configuration for GPU sharing. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigGuestAcceleratorGpuSharingConfig>? gpuSharingConfig;
  /// The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  final pulumi.Input<String> type;

  /// Creates a new [ClusterNodeConfigGuestAccelerator].
  /// [count] The number of the guest accelerator cards exposed to this instance.
  /// [gpuDriverInstallationConfig] Configuration for auto installation of GPU driver. Structure is documented below.
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig [user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  /// [gpuSharingConfig] Configuration for GPU sharing. Structure is documented below.
  /// [type] The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  ClusterNodeConfigGuestAccelerator({
    required this.count,
    this.gpuDriverInstallationConfig,
    this.gpuPartitionSize,
    this.gpuSharingConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'gpuDriverInstallationConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig, Map<String, dynamic>>(gpuDriverInstallationConfig, (value) => value.toMap()),
      'gpuPartitionSize': ?gpuPartitionSize,
      'gpuSharingConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigGuestAcceleratorGpuSharingConfig, Map<String, dynamic>>(gpuSharingConfig, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ClusterNodeConfigGuestAccelerator.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigGuestAccelerator(
      count: (map['count'] as int).input(),
      gpuDriverInstallationConfig: map['gpuDriverInstallationConfig'] == null ? null : (ClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap((map['gpuDriverInstallationConfig']! as Map).cast<String, dynamic>())).input(),
      gpuPartitionSize: map['gpuPartitionSize'] == null ? null : (map['gpuPartitionSize']! as String).input(),
      gpuSharingConfig: map['gpuSharingConfig'] == null ? null : (ClusterNodeConfigGuestAcceleratorGpuSharingConfig.fromMap((map['gpuSharingConfig']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

