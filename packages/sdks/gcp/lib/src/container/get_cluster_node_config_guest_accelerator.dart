// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_guest_accelerator_gpu_driver_installation_config.dart';
import 'get_cluster_node_config_guest_accelerator_gpu_sharing_config.dart';

class GetClusterNodeConfigGuestAccelerator {
  /// The number of the accelerator cards exposed to an instance.
  final pulumi.Input<int> count;

  /// Configuration for auto installation of GPU driver.
  final pulumi.Input<
    List<GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig>
  >
  gpuDriverInstallationConfigs;

  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning)
  final pulumi.Input<String> gpuPartitionSize;

  /// Configuration for GPU sharing.
  final pulumi.Input<List<GetClusterNodeConfigGuestAcceleratorGpuSharingConfig>>
  gpuSharingConfigs;

  /// The accelerator type resource name.
  final pulumi.Input<String> type;

  /// Creates a new [GetClusterNodeConfigGuestAccelerator].
  /// [count] The number of the accelerator cards exposed to an instance.
  /// [gpuDriverInstallationConfigs] Configuration for auto installation of GPU driver.
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning)
  /// [gpuSharingConfigs] Configuration for GPU sharing.
  /// [type] The accelerator type resource name.
  GetClusterNodeConfigGuestAccelerator({
    required this.count,
    required this.gpuDriverInstallationConfigs,
    required this.gpuPartitionSize,
    required this.gpuSharingConfigs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'gpuDriverInstallationConfigs':
          pulumi.Input.mapInputValue<
            List<
              GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig
            >,
            List<Map<String, dynamic>>
          >(
            gpuDriverInstallationConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'gpuPartitionSize': gpuPartitionSize,
      'gpuSharingConfigs':
          pulumi.Input.mapInputValue<
            List<GetClusterNodeConfigGuestAcceleratorGpuSharingConfig>,
            List<Map<String, dynamic>>
          >(
            gpuSharingConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetClusterNodeConfigGuestAcceleratorGpuSharingConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': type,
    };
  }

  factory GetClusterNodeConfigGuestAccelerator.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodeConfigGuestAccelerator(
      count: pulumi.Input.fromValue(map['count'] as int),
      gpuDriverInstallationConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig
        >(
          map['gpuDriverInstallationConfigs']!,
          (value) =>
              GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      gpuPartitionSize: pulumi.Input.fromValue(
        map['gpuPartitionSize'] as String,
      ),
      gpuSharingConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetClusterNodeConfigGuestAcceleratorGpuSharingConfig
        >(
          map['gpuSharingConfigs']!,
          (value) =>
              GetClusterNodeConfigGuestAcceleratorGpuSharingConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
