// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_ip_block.dart';

/// Represents the network configuration required for the VMware user clusters with Static IP configurations.
class VmwareStaticIpConfig {
  /// Represents the configuration values for static IP allocation to nodes.
  final pulumi.Input<List<VmwareIpBlock>>? ipBlocks;

  /// Creates a new [VmwareStaticIpConfig].
  /// [ipBlocks] Represents the configuration values for static IP allocation to nodes.
  const VmwareStaticIpConfig({
    this.ipBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipBlocks': ?pulumi.Input.mapOptionalInputValue<List<VmwareIpBlock>, List<Map<String, dynamic>>>(ipBlocks, (value) => pulumi.Input.encodeList<VmwareIpBlock, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VmwareStaticIpConfig.fromMap(Map<String, dynamic> map) {
    return VmwareStaticIpConfig(
      ipBlocks: (() { final guardedValue = map['ipBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VmwareIpBlock>(guardedValue, (value) => VmwareIpBlock.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

