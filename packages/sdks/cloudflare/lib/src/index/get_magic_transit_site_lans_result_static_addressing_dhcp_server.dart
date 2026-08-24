// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_site_lans_result_static_addressing_dhcp_server_dhcp_option.dart';

class GetMagicTransitSiteLansResultStaticAddressingDhcpServer {
  /// Optional list of custom DHCP options to include in DHCP responses. Only valid when DHCP server is enabled.
  final pulumi.Input<List<GetMagicTransitSiteLansResultStaticAddressingDhcpServerDhcpOption>> dhcpOptions;
  /// A valid IPv4 address.
  final pulumi.Input<String> dhcpPoolEnd;
  /// A valid IPv4 address.
  final pulumi.Input<String> dhcpPoolStart;
  /// A valid IPv4 address.
  final pulumi.Input<String> dnsServer;
  final pulumi.Input<List<String>> dnsServers;
  /// Mapping of MAC addresses to IP addresses
  final pulumi.Input<Map<String, String>> reservations;

  /// Creates a new [GetMagicTransitSiteLansResultStaticAddressingDhcpServer].
  /// [dhcpOptions] Optional list of custom DHCP options to include in DHCP responses. Only valid when DHCP server is enabled.
  /// [dhcpPoolEnd] A valid IPv4 address.
  /// [dhcpPoolStart] A valid IPv4 address.
  /// [dnsServer] A valid IPv4 address.
  /// [dnsServers] Required.
  /// [reservations] Mapping of MAC addresses to IP addresses
  const GetMagicTransitSiteLansResultStaticAddressingDhcpServer({
    required this.dhcpOptions,
    required this.dhcpPoolEnd,
    required this.dhcpPoolStart,
    required this.dnsServer,
    required this.dnsServers,
    required this.reservations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpOptions': pulumi.Input.mapInputValue<List<GetMagicTransitSiteLansResultStaticAddressingDhcpServerDhcpOption>, List<Map<String, dynamic>>>(dhcpOptions, (value) => pulumi.Input.encodeList<GetMagicTransitSiteLansResultStaticAddressingDhcpServerDhcpOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dhcpPoolEnd': dhcpPoolEnd,
      'dhcpPoolStart': dhcpPoolStart,
      'dnsServer': dnsServer,
      'dnsServers': dnsServers,
      'reservations': reservations,
    };
  }

  factory GetMagicTransitSiteLansResultStaticAddressingDhcpServer.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLansResultStaticAddressingDhcpServer(
      dhcpOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMagicTransitSiteLansResultStaticAddressingDhcpServerDhcpOption>(map['dhcpOptions']!, (value) => GetMagicTransitSiteLansResultStaticAddressingDhcpServerDhcpOption.fromMap((value as Map).cast<String, dynamic>()))),
      dhcpPoolEnd: pulumi.Input.fromValue(map['dhcpPoolEnd'] as String),
      dhcpPoolStart: pulumi.Input.fromValue(map['dhcpPoolStart'] as String),
      dnsServer: pulumi.Input.fromValue(map['dnsServer'] as String),
      dnsServers: pulumi.Input.fromValue((map['dnsServers'] as List).cast<String>()),
      reservations: pulumi.Input.fromValue((map['reservations'] as Map).cast<String, String>()),
    );
  }
}
