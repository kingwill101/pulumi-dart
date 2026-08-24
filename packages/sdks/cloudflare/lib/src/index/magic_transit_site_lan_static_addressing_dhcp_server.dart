// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_site_lan_static_addressing_dhcp_server_dhcp_option.dart';

class MagicTransitSiteLanStaticAddressingDhcpServer {
  /// Optional list of custom DHCP options to include in DHCP responses. Only valid when DHCP server is enabled.
  final pulumi.Input<List<MagicTransitSiteLanStaticAddressingDhcpServerDhcpOption>?>? dhcpOptions;
  /// A valid IPv4 address.
  final pulumi.Input<String?>? dhcpPoolEnd;
  /// A valid IPv4 address.
  final pulumi.Input<String?>? dhcpPoolStart;
  /// A valid IPv4 address.
  final pulumi.Input<String?>? dnsServer;
  final pulumi.Input<List<String>?>? dnsServers;
  /// Mapping of MAC addresses to IP addresses
  final pulumi.Input<Map<String, String>?>? reservations;

  /// Creates a new [MagicTransitSiteLanStaticAddressingDhcpServer].
  /// [dhcpOptions] Optional list of custom DHCP options to include in DHCP responses. Only valid when DHCP server is enabled.
  /// [dhcpPoolEnd] A valid IPv4 address.
  /// [dhcpPoolStart] A valid IPv4 address.
  /// [dnsServer] A valid IPv4 address.
  /// [dnsServers] Optional.
  /// [reservations] Mapping of MAC addresses to IP addresses
  const MagicTransitSiteLanStaticAddressingDhcpServer({
    this.dhcpOptions,
    this.dhcpPoolEnd,
    this.dhcpPoolStart,
    this.dnsServer,
    this.dnsServers,
    this.reservations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpOptions': ?pulumi.Input.mapOptionalInputValue<List<MagicTransitSiteLanStaticAddressingDhcpServerDhcpOption>, List<Map<String, dynamic>>>(dhcpOptions, (value) => pulumi.Input.encodeList<MagicTransitSiteLanStaticAddressingDhcpServerDhcpOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dhcpPoolEnd': ?dhcpPoolEnd,
      'dhcpPoolStart': ?dhcpPoolStart,
      'dnsServer': ?dnsServer,
      'dnsServers': ?dnsServers,
      'reservations': ?reservations,
    };
  }

  factory MagicTransitSiteLanStaticAddressingDhcpServer.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteLanStaticAddressingDhcpServer(
      dhcpOptions: (() { final guardedValue = map['dhcpOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MagicTransitSiteLanStaticAddressingDhcpServerDhcpOption>(guardedValue, (value) => MagicTransitSiteLanStaticAddressingDhcpServerDhcpOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dhcpPoolEnd: (() { final guardedValue = map['dhcpPoolEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dhcpPoolStart: (() { final guardedValue = map['dhcpPoolStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsServer: (() { final guardedValue = map['dnsServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      reservations: (() { final guardedValue = map['reservations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
