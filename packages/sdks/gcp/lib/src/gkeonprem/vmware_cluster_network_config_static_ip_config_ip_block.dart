// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_network_config_static_ip_config_ip_block_ip.dart';

class VMwareClusterNetworkConfigStaticIpConfigIpBlock {
  /// The network gateway used by the VMware User Cluster.
  final pulumi.Input<String> gateway;
  /// The node's network configurations used by the VMware User Cluster.
  /// Structure is documented below.
  final pulumi.Input<List<VMwareClusterNetworkConfigStaticIpConfigIpBlockIp>> ips;
  /// The netmask used by the VMware User Cluster.
  final pulumi.Input<String> netmask;

  /// Creates a new [VMwareClusterNetworkConfigStaticIpConfigIpBlock].
  /// [gateway] The network gateway used by the VMware User Cluster.
  /// [ips] The node's network configurations used by the VMware User Cluster.
  /// [netmask] The netmask used by the VMware User Cluster.
  const VMwareClusterNetworkConfigStaticIpConfigIpBlock({
    required this.gateway,
    required this.ips,
    required this.netmask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateway': gateway,
      'ips': pulumi.Input.mapInputValue<List<VMwareClusterNetworkConfigStaticIpConfigIpBlockIp>, List<Map<String, dynamic>>>(ips, (value) => pulumi.Input.encodeList<VMwareClusterNetworkConfigStaticIpConfigIpBlockIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'netmask': netmask,
    };
  }

  factory VMwareClusterNetworkConfigStaticIpConfigIpBlock.fromMap(Map<String, dynamic> map) {
    return VMwareClusterNetworkConfigStaticIpConfigIpBlock(
      gateway: pulumi.Input.fromValue(map['gateway'] as String),
      ips: pulumi.Input.fromValue(pulumi.Input.decodeList<VMwareClusterNetworkConfigStaticIpConfigIpBlockIp>(map['ips']!, (value) => VMwareClusterNetworkConfigStaticIpConfigIpBlockIp.fromMap((value as Map).cast<String, dynamic>()))),
      netmask: pulumi.Input.fromValue(map['netmask'] as String),
    );
  }
}

