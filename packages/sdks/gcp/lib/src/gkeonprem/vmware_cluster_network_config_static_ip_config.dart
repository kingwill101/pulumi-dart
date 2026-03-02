// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_network_config_static_ip_config_ip_block.dart';

class VMwareClusterNetworkConfigStaticIpConfig {
  /// Represents the configuration values for static IP allocation to nodes.
  /// Structure is documented below.
  final pulumi.Input<List<VMwareClusterNetworkConfigStaticIpConfigIpBlock>> ipBlocks;

  /// Creates a new [VMwareClusterNetworkConfigStaticIpConfig].
  /// [ipBlocks] Represents the configuration values for static IP allocation to nodes.
  VMwareClusterNetworkConfigStaticIpConfig({
    required this.ipBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipBlocks': pulumi.Input.mapInputValue<List<VMwareClusterNetworkConfigStaticIpConfigIpBlock>, List<Map<String, dynamic>>>(ipBlocks, (value) => pulumi.Input.encodeList<VMwareClusterNetworkConfigStaticIpConfigIpBlock, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VMwareClusterNetworkConfigStaticIpConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterNetworkConfigStaticIpConfig(
      ipBlocks: (pulumi.Input.decodeList<VMwareClusterNetworkConfigStaticIpConfigIpBlock>(map['ipBlocks'], (value) => VMwareClusterNetworkConfigStaticIpConfigIpBlock.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

