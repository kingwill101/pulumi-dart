// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_network_config_control_plane_v2_config_control_plane_ip_block.dart';

class VMwareClusterNetworkConfigControlPlaneV2Config {
  /// Static IP addresses for the control plane nodes.
  final pulumi.Input<VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock>? controlPlaneIpBlock;

  /// Creates a new [VMwareClusterNetworkConfigControlPlaneV2Config].
  /// [controlPlaneIpBlock] Static IP addresses for the control plane nodes.
  const VMwareClusterNetworkConfigControlPlaneV2Config({
    this.controlPlaneIpBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneIpBlock': ?pulumi.Input.mapOptionalInputValue<VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock, Map<String, dynamic>>(controlPlaneIpBlock, (value) => value.toMap()),
    };
  }

  factory VMwareClusterNetworkConfigControlPlaneV2Config.fromMap(Map<String, dynamic> map) {
    return VMwareClusterNetworkConfigControlPlaneV2Config(
      controlPlaneIpBlock: (() { final guardedValue = map['controlPlaneIpBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

