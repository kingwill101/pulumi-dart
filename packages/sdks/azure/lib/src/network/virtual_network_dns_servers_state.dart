// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualNetworkDnsServers resources.
class VirtualNetworkDnsServersState {
  /// List of IP addresses of DNS servers
  final pulumi.Input<List<String>>? dnsServers;
  /// The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [VirtualNetworkDnsServersState].
  /// [dnsServers] List of IP addresses of DNS servers
  /// [virtualNetworkId] The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created.
  VirtualNetworkDnsServersState({
    pulumi.Output<List<String>>? dnsServers,
    pulumi.Output<String>? virtualNetworkId,
  }) :
      dnsServers = pulumi.Input.asOptionalInput<List<String>>(dnsServers),
      virtualNetworkId = pulumi.Input.asOptionalInput<String>(virtualNetworkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory VirtualNetworkDnsServersState.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkDnsServersState(
      dnsServers: map['dnsServers'] == null ? null : pulumi.Output.create<List<String>>((map['dnsServers'] as List).cast<String>()),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkId'] as String),
    );
  }
}

