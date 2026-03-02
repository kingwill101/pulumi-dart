// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_network_config_ha_control_plane_config_control_plane_ip_block.dart';

class VmwareAdminClusterNetworkConfigHaControlPlaneConfig {
  /// Static IP addresses for the control plane nodes.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlock>? controlPlaneIpBlock;

  /// Creates a new [VmwareAdminClusterNetworkConfigHaControlPlaneConfig].
  /// [controlPlaneIpBlock] Static IP addresses for the control plane nodes.
  VmwareAdminClusterNetworkConfigHaControlPlaneConfig({
    this.controlPlaneIpBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneIpBlock': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlock, Map<String, dynamic>>(controlPlaneIpBlock, (value) => value.toMap()),
    };
  }

  factory VmwareAdminClusterNetworkConfigHaControlPlaneConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterNetworkConfigHaControlPlaneConfig(
      controlPlaneIpBlock: map['controlPlaneIpBlock'] == null ? null : (VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlock.fromMap((map['controlPlaneIpBlock'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

