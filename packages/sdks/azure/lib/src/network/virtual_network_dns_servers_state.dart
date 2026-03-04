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
  VirtualNetworkDnsServersState({this.dnsServers, this.virtualNetworkId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory VirtualNetworkDnsServersState.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkDnsServersState(
      dnsServers: (() {
        final guardedValue = map['dnsServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      virtualNetworkId: (() {
        final guardedValue = map['virtualNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
