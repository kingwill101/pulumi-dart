// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_network_config_static_ip_config_ip_block.dart';

class VmwareAdminClusterNetworkConfigStaticIpConfig {
  /// Represents the configuration values for static IP allocation to nodes.
  /// Structure is documented below.
  final pulumi.Input<List<VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock>>? ipBlocks;

  /// Creates a new [VmwareAdminClusterNetworkConfigStaticIpConfig].
  /// [ipBlocks] Represents the configuration values for static IP allocation to nodes.
  VmwareAdminClusterNetworkConfigStaticIpConfig({
    this.ipBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipBlocks': ?pulumi.Input.mapOptionalInputValue<List<VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock>, List<Map<String, dynamic>>>(ipBlocks, (value) => pulumi.Input.encodeList<VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VmwareAdminClusterNetworkConfigStaticIpConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterNetworkConfigStaticIpConfig(
      ipBlocks: (() { final guardedValue = map['ipBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock>(guardedValue, (value) => VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

