// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_ip_block_response.dart';

/// Specifies control plane V2 config.
class VmwareControlPlaneV2ConfigResponse {
  /// Static IP addresses for the control plane nodes.
  final pulumi.Input<VmwareIpBlockResponse> controlPlaneIpBlock;

  /// Creates a new [VmwareControlPlaneV2ConfigResponse].
  /// [controlPlaneIpBlock] Static IP addresses for the control plane nodes.
  const VmwareControlPlaneV2ConfigResponse({
    required this.controlPlaneIpBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneIpBlock': pulumi.Input.mapInputValue<VmwareIpBlockResponse, Map<String, dynamic>>(controlPlaneIpBlock, (value) => value.toMap()),
    };
  }

  factory VmwareControlPlaneV2ConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareControlPlaneV2ConfigResponse(
      controlPlaneIpBlock: pulumi.Input.fromValue(VmwareIpBlockResponse.fromMap((map['controlPlaneIpBlock']! as Map).cast<String, dynamic>())),
    );
  }
}
