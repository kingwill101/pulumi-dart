// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualNetworkPanoramaDnsSettings {
  final pulumi.Input<List<String>>? azureDnsServers;
  /// Specifies a list of DNS servers to use. Conflicts with `dns_settings[0].use_azure_dns`.
  final pulumi.Input<List<String>>? dnsServers;
  /// Should the Firewall use Azure Supplied DNS servers. Conflicts with `dns_settings[0].dns_servers`. Defaults to `false`.
  final pulumi.Input<bool>? useAzureDns;

  /// Creates a new [NextGenerationFirewallVirtualNetworkPanoramaDnsSettings].
  /// [azureDnsServers] Optional.
  /// [dnsServers] Specifies a list of DNS servers to use. Conflicts with `dns_settings[0].use_azure_dns`.
  /// [useAzureDns] Should the Firewall use Azure Supplied DNS servers. Conflicts with `dns_settings[0].dns_servers`. Defaults to `false`.
  const NextGenerationFirewallVirtualNetworkPanoramaDnsSettings({
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

  factory NextGenerationFirewallVirtualNetworkPanoramaDnsSettings.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkPanoramaDnsSettings(
      azureDnsServers: (() { final guardedValue = map['azureDnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      useAzureDns: (() { final guardedValue = map['useAzureDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
