// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings {
  final List<String>? azureDnsServers;
  /// A list of DNS servers to use. Conflicts with `dns_settings[0].use_azure_dns`.
  final List<String>? dnsServers;
  /// Should Azure DNS servers be used? Conflicts with `dns_settings[0].dns_servers`. Defaults to `false`.
  final bool? useAzureDns;

  /// Creates a new [NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings].
  /// [azureDnsServers] Optional.
  /// [dnsServers] A list of DNS servers to use. Conflicts with `dns_settings[0].use_azure_dns`.
  /// [useAzureDns] Should Azure DNS servers be used? Conflicts with `dns_settings[0].dns_servers`. Defaults to `false`.
  NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings({
    this.azureDnsServers,
    this.dnsServers,
    this.useAzureDns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDnsServers': ?azureDnsServers,
      'dnsServers': ?dnsServers,
      'useAzureDns': ?useAzureDns,
    };
  }

  factory NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings(
      azureDnsServers: map['azureDnsServers'] == null ? null : (map['azureDnsServers'] as List).cast<String>(),
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      useAzureDns: map['useAzureDns'] == null ? null : map['useAzureDns'] as bool,
    );
  }
}

