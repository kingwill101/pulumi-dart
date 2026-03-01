// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_ip_block_response.dart';

/// Specifies control plane V2 config.
class VmwareControlPlaneV2ConfigResponse {
  /// Static IP addresses for the control plane nodes.
  final VmwareIpBlockResponse controlPlaneIpBlock;

  /// Creates a new [VmwareControlPlaneV2ConfigResponse].
  /// [controlPlaneIpBlock] Static IP addresses for the control plane nodes.
  VmwareControlPlaneV2ConfigResponse({
    required this.controlPlaneIpBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneIpBlock': controlPlaneIpBlock.toMap(),
    };
  }

  factory VmwareControlPlaneV2ConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareControlPlaneV2ConfigResponse(
      controlPlaneIpBlock: VmwareIpBlockResponse.fromMap((map['controlPlaneIpBlock'] as Map).cast<String, dynamic>()),
    );
  }
}

