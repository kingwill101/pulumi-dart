// ignore_for_file: unused_element, unnecessary_cast


/// DNS settings of a network interface.
class NetworkInterfaceDnsSettings {
  /// List of DNS servers IP addresses. Use 'AzureProvidedDNS' to switch to azure provided DNS resolution. 'AzureProvidedDNS' value cannot be combined with other IPs, it must be the only value in dnsServers collection.
  final List<String>? dnsServers;
  /// Relative DNS name for this NIC used for internal communications between VMs in the same virtual network.
  final String? internalDnsNameLabel;

  /// Creates a new [NetworkInterfaceDnsSettings].
  /// [dnsServers] List of DNS servers IP addresses. Use 'AzureProvidedDNS' to switch to azure provided DNS resolution. 'AzureProvidedDNS' value cannot be combined with other IPs, it must be the only value in dnsServers collection.
  /// [internalDnsNameLabel] Relative DNS name for this NIC used for internal communications between VMs in the same virtual network.
  NetworkInterfaceDnsSettings({
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
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      internalDnsNameLabel: map['internalDnsNameLabel'] == null ? null : map['internalDnsNameLabel'] as String,
    );
  }
}

