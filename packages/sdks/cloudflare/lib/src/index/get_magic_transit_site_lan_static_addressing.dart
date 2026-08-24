// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_site_lan_static_addressing_dhcp_relay.dart';
import 'get_magic_transit_site_lan_static_addressing_dhcp_server.dart';

class GetMagicTransitSiteLanStaticAddressing {
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> address;
  final pulumi.Input<GetMagicTransitSiteLanStaticAddressingDhcpRelay> dhcpRelay;
  final pulumi.Input<GetMagicTransitSiteLanStaticAddressingDhcpServer> dhcpServer;
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> secondaryAddress;
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> virtualAddress;

  /// Creates a new [GetMagicTransitSiteLanStaticAddressing].
  /// [address] A valid CIDR notation representing an IP range.
  /// [dhcpRelay] Required.
  /// [dhcpServer] Required.
  /// [secondaryAddress] A valid CIDR notation representing an IP range.
  /// [virtualAddress] A valid CIDR notation representing an IP range.
  const GetMagicTransitSiteLanStaticAddressing({
    required this.address,
    required this.dhcpRelay,
    required this.dhcpServer,
    required this.secondaryAddress,
    required this.virtualAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'dhcpRelay': pulumi.Input.mapInputValue<GetMagicTransitSiteLanStaticAddressingDhcpRelay, Map<String, dynamic>>(dhcpRelay, (value) => value.toMap()),
      'dhcpServer': pulumi.Input.mapInputValue<GetMagicTransitSiteLanStaticAddressingDhcpServer, Map<String, dynamic>>(dhcpServer, (value) => value.toMap()),
      'secondaryAddress': secondaryAddress,
      'virtualAddress': virtualAddress,
    };
  }

  factory GetMagicTransitSiteLanStaticAddressing.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLanStaticAddressing(
      address: pulumi.Input.fromValue(map['address'] as String),
      dhcpRelay: pulumi.Input.fromValue(GetMagicTransitSiteLanStaticAddressingDhcpRelay.fromMap((map['dhcpRelay']! as Map).cast<String, dynamic>())),
      dhcpServer: pulumi.Input.fromValue(GetMagicTransitSiteLanStaticAddressingDhcpServer.fromMap((map['dhcpServer']! as Map).cast<String, dynamic>())),
      secondaryAddress: pulumi.Input.fromValue(map['secondaryAddress'] as String),
      virtualAddress: pulumi.Input.fromValue(map['virtualAddress'] as String),
    );
  }
}
