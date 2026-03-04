// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_network_config_static_ip_config_ip_block_ip.dart';

class VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock {
  /// The network gateway used by the VMware Admin Cluster.
  final pulumi.Input<String> gateway;

  /// The node's network configurations used by the VMware Admin Cluster.
  /// Structure is documented below.
  final pulumi.Input<
    List<VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp>
  >
  ips;

  /// The netmask used by the VMware Admin Cluster.
  final pulumi.Input<String> netmask;

  /// Creates a new [VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock].
  /// [gateway] The network gateway used by the VMware Admin Cluster.
  /// [ips] The node's network configurations used by the VMware Admin Cluster.
  /// [netmask] The netmask used by the VMware Admin Cluster.
  VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock({
    required this.gateway,
    required this.ips,
    required this.netmask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateway': gateway,
      'ips':
          pulumi.Input.mapInputValue<
            List<VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp>,
            List<Map<String, dynamic>>
          >(
            ips,
            (value) =>
                pulumi.Input.encodeList<
                  VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'netmask': netmask,
    };
  }

  factory VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock(
      gateway: pulumi.Input.fromValue(map['gateway'] as String),
      ips: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp
        >(
          map['ips']!,
          (value) =>
              VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      netmask: pulumi.Input.fromValue(map['netmask'] as String),
    );
  }
}
