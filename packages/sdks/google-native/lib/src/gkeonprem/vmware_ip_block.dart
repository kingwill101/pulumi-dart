// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_host_ip.dart';

/// Represents a collection of IP addresses to assign to nodes.
class VmwareIpBlock {
  /// The network gateway used by the VMware user cluster.
  final String? gateway;
  /// The node's network configurations used by the VMware user cluster.
  final List<VmwareHostIp>? ips;
  /// The netmask used by the VMware user cluster.
  final String? netmask;

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
      'ips': ?ips == null ? null : pulumi.Input.encodeList<VmwareHostIp, Map<String, dynamic>>(ips!, (value) => value.toMap()),
      'netmask': ?netmask,
    };
  }

  factory VmwareIpBlock.fromMap(Map<String, dynamic> map) {
    return VmwareIpBlock(
      gateway: map['gateway'] == null ? null : map['gateway'] as String,
      ips: map['ips'] == null ? null : pulumi.Input.decodeList<VmwareHostIp>(map['ips'], (value) => VmwareHostIp.fromMap((value as Map).cast<String, dynamic>())),
      netmask: map['netmask'] == null ? null : map['netmask'] as String,
    );
  }
}

