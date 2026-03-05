// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_host_ip_response.dart';

/// Represents a collection of IP addresses to assign to nodes.
class VmwareIpBlockResponse {
  /// The network gateway used by the VMware user cluster.
  final pulumi.Input<String> gateway;
  /// The node's network configurations used by the VMware user cluster.
  final pulumi.Input<List<VmwareHostIpResponse>> ips;
  /// The netmask used by the VMware user cluster.
  final pulumi.Input<String> netmask;

  /// Creates a new [VmwareIpBlockResponse].
  /// [gateway] The network gateway used by the VMware user cluster.
  /// [ips] The node's network configurations used by the VMware user cluster.
  /// [netmask] The netmask used by the VMware user cluster.
  VmwareIpBlockResponse({
    required this.gateway,
    required this.ips,
    required this.netmask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateway': gateway,
      'ips': pulumi.Input.mapInputValue<List<VmwareHostIpResponse>, List<Map<String, dynamic>>>(ips, (value) => pulumi.Input.encodeList<VmwareHostIpResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'netmask': netmask,
    };
  }

  factory VmwareIpBlockResponse.fromMap(Map<String, dynamic> map) {
    return VmwareIpBlockResponse(
      gateway: pulumi.Input.fromValue(map['gateway'] as String),
      ips: pulumi.Input.fromValue(pulumi.Input.decodeList<VmwareHostIpResponse>(map['ips']!, (value) => VmwareHostIpResponse.fromMap((value as Map).cast<String, dynamic>()))),
      netmask: pulumi.Input.fromValue(map['netmask'] as String),
    );
  }
}

