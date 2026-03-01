// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_cluster_network_config_control_plane_v2_config_control_plane_ip_block.dart';

class VMwareClusterNetworkConfigControlPlaneV2Config {
  /// Static IP addresses for the control plane nodes.
  final VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock? controlPlaneIpBlock;

  /// Creates a new [VMwareClusterNetworkConfigControlPlaneV2Config].
  /// [controlPlaneIpBlock] Static IP addresses for the control plane nodes.
  VMwareClusterNetworkConfigControlPlaneV2Config({
    this.controlPlaneIpBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneIpBlock': ?controlPlaneIpBlock == null ? null : controlPlaneIpBlock!.toMap(),
    };
  }

  factory VMwareClusterNetworkConfigControlPlaneV2Config.fromMap(Map<String, dynamic> map) {
    return VMwareClusterNetworkConfigControlPlaneV2Config(
      controlPlaneIpBlock: map['controlPlaneIpBlock'] == null ? null : VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock.fromMap((map['controlPlaneIpBlock'] as Map).cast<String, dynamic>()),
    );
  }
}

