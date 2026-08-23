// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DNS settings of a network interface.
class NetworkInterfaceDnsSettingsInterfaceEndpointResponse {
  /// If the VM that uses this NIC is part of an Availability Set, then this list will have the union of all DNS servers from all NICs that are part of the Availability Set. This property is what is configured on each of those VMs.
  final pulumi.Input<List<String>>? appliedDnsServers;
  /// List of DNS servers IP addresses. Use 'AzureProvidedDNS' to switch to azure provided DNS resolution. 'AzureProvidedDNS' value cannot be combined with other IPs, it must be the only value in dnsServers collection.
  final pulumi.Input<List<String>>? dnsServers;
  /// Relative DNS name for this NIC used for internal communications between VMs in the same virtual network.
  final pulumi.Input<String>? internalDnsNameLabel;
  /// Even if internalDnsNameLabel is not specified, a DNS entry is created for the primary NIC of the VM. This DNS name can be constructed by concatenating the VM name with the value of internalDomainNameSuffix.
  final pulumi.Input<String>? internalDomainNameSuffix;
  /// Fully qualified DNS name supporting internal communications between VMs in the same virtual network.
  final pulumi.Input<String>? internalFqdn;

  /// Creates a new [NetworkInterfaceDnsSettingsInterfaceEndpointResponse].
  /// [appliedDnsServers] If the VM that uses this NIC is part of an Availability Set, then this list will have the union of all DNS servers from all NICs that are part of the Availability Set. This property is what is configured on each of those VMs.
  /// [dnsServers] List of DNS servers IP addresses. Use 'AzureProvidedDNS' to switch to azure provided DNS resolution. 'AzureProvidedDNS' value cannot be combined with other IPs, it must be the only value in dnsServers collection.
  /// [internalDnsNameLabel] Relative DNS name for this NIC used for internal communications between VMs in the same virtual network.
  /// [internalDomainNameSuffix] Even if internalDnsNameLabel is not specified, a DNS entry is created for the primary NIC of the VM. This DNS name can be constructed by concatenating the VM name with the value of internalDomainNameSuffix.
  /// [internalFqdn] Fully qualified DNS name supporting internal communications between VMs in the same virtual network.
  const NetworkInterfaceDnsSettingsInterfaceEndpointResponse({
    this.appliedDnsServers,
    this.dnsServers,
    this.internalDnsNameLabel,
    this.internalDomainNameSuffix,
    this.internalFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedDnsServers': ?appliedDnsServers,
      'dnsServers': ?dnsServers,
      'internalDnsNameLabel': ?internalDnsNameLabel,
      'internalDomainNameSuffix': ?internalDomainNameSuffix,
      'internalFqdn': ?internalFqdn,
    };
  }

  factory NetworkInterfaceDnsSettingsInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceDnsSettingsInterfaceEndpointResponse(
      appliedDnsServers: (() { final guardedValue = map['appliedDnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      internalDnsNameLabel: (() { final guardedValue = map['internalDnsNameLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalDomainNameSuffix: (() { final guardedValue = map['internalDomainNameSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalFqdn: (() { final guardedValue = map['internalFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
