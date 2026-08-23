// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DNS settings of a network interface.
class NetworkInterfaceDnsSettings {
  /// List of DNS servers IP addresses. Use 'AzureProvidedDNS' to switch to azure provided DNS resolution. 'AzureProvidedDNS' value cannot be combined with other IPs, it must be the only value in dnsServers collection.
  final pulumi.Input<List<String>>? dnsServers;
  /// Relative DNS name for this NIC used for internal communications between VMs in the same virtual network.
  final pulumi.Input<String>? internalDnsNameLabel;

  /// Creates a new [NetworkInterfaceDnsSettings].
  /// [dnsServers] List of DNS servers IP addresses. Use 'AzureProvidedDNS' to switch to azure provided DNS resolution. 'AzureProvidedDNS' value cannot be combined with other IPs, it must be the only value in dnsServers collection.
  /// [internalDnsNameLabel] Relative DNS name for this NIC used for internal communications between VMs in the same virtual network.
  const NetworkInterfaceDnsSettings({
    this.dnsServers,
    this.internalDnsNameLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'internalDnsNameLabel': ?internalDnsNameLabel,
    };
  }

  factory NetworkInterfaceDnsSettings.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceDnsSettings(
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      internalDnsNameLabel: (() { final guardedValue = map['internalDnsNameLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
