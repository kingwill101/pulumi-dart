// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_host_ip.dart';

/// Represents a collection of IP addresses to assign to nodes.
class VmwareIpBlock {
  /// The network gateway used by the VMware user cluster.
  final pulumi.Input<String>? gateway;
  /// The node's network configurations used by the VMware user cluster.
  final pulumi.Input<List<VmwareHostIp>>? ips;
  /// The netmask used by the VMware user cluster.
  final pulumi.Input<String>? netmask;

  /// Creates a new [VmwareIpBlock].
  /// [gateway] The network gateway used by the VMware user cluster.
  /// [ips] The node's network configurations used by the VMware user cluster.
  /// [netmask] The netmask used by the VMware user cluster.
  VmwareIpBlock({
    this.gateway,
    this.ips,
    this.netmask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateway': ?gateway,
      'ips': ?pulumi.Input.mapOptionalInputValue<List<VmwareHostIp>, List<Map<String, dynamic>>>(ips, (value) => pulumi.Input.encodeList<VmwareHostIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'netmask': ?netmask,
    };
  }

  factory VmwareIpBlock.fromMap(Map<String, dynamic> map) {
    return VmwareIpBlock(
      gateway: map['gateway'] == null ? null : (map['gateway']! as String).input(),
      ips: map['ips'] == null ? null : (pulumi.Input.decodeList<VmwareHostIp>(map['ips']!, (value) => VmwareHostIp.fromMap((value as Map).cast<String, dynamic>()))).input(),
      netmask: map['netmask'] == null ? null : (map['netmask']! as String).input(),
    );
  }
}

