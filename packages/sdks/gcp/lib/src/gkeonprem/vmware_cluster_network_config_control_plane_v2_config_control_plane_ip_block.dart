// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_network_config_control_plane_v2_config_control_plane_ip_block_ip.dart';

class VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock {
  /// The network gateway used by the VMware User Cluster.
  final pulumi.Input<String>? gateway;

  /// The node's network configurations used by the VMware User Cluster.
  /// Structure is documented below.
  final pulumi.Input<
    List<VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp>
  >?
  ips;

  /// The netmask used by the VMware User Cluster.
  final pulumi.Input<String>? netmask;

  /// Creates a new [VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock].
  /// [gateway] The network gateway used by the VMware User Cluster.
  /// [ips] The node's network configurations used by the VMware User Cluster.
  /// [netmask] The netmask used by the VMware User Cluster.
  VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock({
    this.gateway,
    this.ips,
    this.netmask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateway': ?gateway,
      'ips':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp
            >,
            List<Map<String, dynamic>>
          >(
            ips,
            (value) =>
                pulumi.Input.encodeList<
                  VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'netmask': ?netmask,
    };
  }

  factory VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock.fromMap(
    Map<String, dynamic> map,
  ) {
    return VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock(
      gateway: (() {
        final guardedValue = map['gateway'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ips: (() {
        final guardedValue = map['ips'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp
          >(
            guardedValue,
            (value) =>
                VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      netmask: (() {
        final guardedValue = map['netmask'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
