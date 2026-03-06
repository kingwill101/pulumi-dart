// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A GkeNodeConfigAcceleratorConfig represents a Hardware Accelerator request for a node pool.
class GkeNodePoolAcceleratorConfigResponse {
  /// The number of accelerator cards exposed to an instance.
  final pulumi.Input<String> acceleratorCount;
  /// The accelerator type resource namename (see GPUs on Compute Engine).
  final pulumi.Input<String> acceleratorType;
  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final pulumi.Input<String> gpuPartitionSize;

  /// Creates a new [GkeNodePoolAcceleratorConfigResponse].
  /// [acceleratorCount] The number of accelerator cards exposed to an instance.
  /// [acceleratorType] The accelerator type resource namename (see GPUs on Compute Engine).
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  const GkeNodePoolAcceleratorConfigResponse({
    required this.acceleratorCount,
    required this.acceleratorType,
    required this.gpuPartitionSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': acceleratorCount,
      'acceleratorType': acceleratorType,
      'gpuPartitionSize': gpuPartitionSize,
    };
  }

  factory GkeNodePoolAcceleratorConfigResponse.fromMap(Map<String, dynamic> map) {
    return GkeNodePoolAcceleratorConfigResponse(
      acceleratorCount: pulumi.Input.fromValue(map['acceleratorCount'] as String),
      acceleratorType: pulumi.Input.fromValue(map['acceleratorType'] as String),
      gpuPartitionSize: pulumi.Input.fromValue(map['gpuPartitionSize'] as String),
    );
  }
}

