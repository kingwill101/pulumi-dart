// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cache network settings.
class CacheNetworkSettingsResponse {
  /// DNS search domain
  final pulumi.Input<String>? dnsSearchDomain;
  /// DNS servers for the cache to use.  It will be set from the network configuration if no value is provided.
  final pulumi.Input<List<String>>? dnsServers;
  /// The IPv4 maximum transmission unit configured for the subnet.
  final pulumi.Input<int>? mtu;
  /// NTP server IP Address or FQDN for the cache to use. The default is time.windows.com.
  final pulumi.Input<String>? ntpServer;
  /// Array of additional IP addresses used by this cache.
  final pulumi.Input<List<String>> utilityAddresses;

  /// Creates a new [CacheNetworkSettingsResponse].
  /// [dnsSearchDomain] DNS search domain
  /// [dnsServers] DNS servers for the cache to use.  It will be set from the network configuration if no value is provided.
  /// [mtu] The IPv4 maximum transmission unit configured for the subnet.
  /// [ntpServer] NTP server IP Address or FQDN for the cache to use. The default is time.windows.com.
  /// [utilityAddresses] Array of additional IP addresses used by this cache.
  CacheNetworkSettingsResponse({
    this.dnsSearchDomain,
    this.dnsServers,
    this.mtu,
    this.ntpServer,
    required this.utilityAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSearchDomain': ?dnsSearchDomain,
      'dnsServers': ?dnsServers,
      'mtu': ?mtu,
      'ntpServer': ?ntpServer,
      'utilityAddresses': utilityAddresses,
    };
  }

  factory CacheNetworkSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CacheNetworkSettingsResponse(
      dnsSearchDomain: (() { final guardedValue = map['dnsSearchDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ntpServer: (() { final guardedValue = map['ntpServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      utilityAddresses: pulumi.Input.fromValue((map['utilityAddresses'] as List).cast<String>()),
    );
  }
}

