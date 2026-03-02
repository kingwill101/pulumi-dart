// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GPUSharingConfig represents the GPU sharing configuration for Hardware Accelerators.
class GPUSharingConfigResponse {
  /// The type of GPU sharing strategy to enable on the GPU node.
  final pulumi.Input<String> gpuSharingStrategy;
  /// The max number of containers that can share a physical GPU.
  final pulumi.Input<String> maxSharedClientsPerGpu;

  /// Creates a new [GPUSharingConfigResponse].
  /// [gpuSharingStrategy] The type of GPU sharing strategy to enable on the GPU node.
  /// [maxSharedClientsPerGpu] The max number of containers that can share a physical GPU.
  GPUSharingConfigResponse({
    required this.gpuSharingStrategy,
    required this.maxSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuSharingStrategy': gpuSharingStrategy,
      'maxSharedClientsPerGpu': maxSharedClientsPerGpu,
    };
  }

  factory GPUSharingConfigResponse.fromMap(Map<String, dynamic> map) {
    return GPUSharingConfigResponse(
      gpuSharingStrategy: (map['gpuSharingStrategy'] as String).input(),
      maxSharedClientsPerGpu: (map['maxSharedClientsPerGpu'] as String).input(),
    );
  }
}

