// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_virtual_network_dns_servers_virtual_network_dns_servers_args_doc}
/// The set of arguments for VirtualNetworkDnsServers.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_dns_servers_virtual_network_dns_servers_args_doc}
class VirtualNetworkDnsServersArgs {
  /// List of IP addresses of DNS servers
  final pulumi.Input<List<String>?>? dnsServers;
  /// The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualNetworkId;

  /// Creates a new [VirtualNetworkDnsServersArgs].
  /// [dnsServers] List of IP addresses of DNS servers
  /// [virtualNetworkId] The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created.
  const VirtualNetworkDnsServersArgs({
    this.dnsServers,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory VirtualNetworkDnsServersArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkDnsServersArgs(
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      virtualNetworkId: pulumi.Input.fromValue(map['virtualNetworkId'] as String),
    );
  }
}
