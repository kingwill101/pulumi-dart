// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_ip_block_response.dart';

/// Represents the network configuration required for the VMware user clusters with Static IP configurations.
class VmwareStaticIpConfigResponse {
  /// Represents the configuration values for static IP allocation to nodes.
  final List<VmwareIpBlockResponse> ipBlocks;

  /// Creates a new [VmwareStaticIpConfigResponse].
  /// [ipBlocks] Represents the configuration values for static IP allocation to nodes.
  VmwareStaticIpConfigResponse({
    required this.ipBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipBlocks': pulumi.Input.encodeList<VmwareIpBlockResponse, Map<String, dynamic>>(ipBlocks, (value) => value.toMap()),
    };
  }

  factory VmwareStaticIpConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareStaticIpConfigResponse(
      ipBlocks: pulumi.Input.decodeList<VmwareIpBlockResponse>(map['ipBlocks'], (value) => VmwareIpBlockResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

