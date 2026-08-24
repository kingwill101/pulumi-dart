// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_site_lan_static_addressing_dhcp_relay.dart';
import 'magic_transit_site_lan_static_addressing_dhcp_server.dart';

class MagicTransitSiteLanStaticAddressing {
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> address;
  final pulumi.Input<MagicTransitSiteLanStaticAddressingDhcpRelay?>? dhcpRelay;
  final pulumi.Input<MagicTransitSiteLanStaticAddressingDhcpServer?>? dhcpServer;
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String?>? secondaryAddress;
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String?>? virtualAddress;

  /// Creates a new [MagicTransitSiteLanStaticAddressing].
  /// [address] A valid CIDR notation representing an IP range.
  /// [dhcpRelay] Optional.
  /// [dhcpServer] Optional.
  /// [secondaryAddress] A valid CIDR notation representing an IP range.
  /// [virtualAddress] A valid CIDR notation representing an IP range.
  const MagicTransitSiteLanStaticAddressing({
    required this.address,
    this.dhcpRelay,
    this.dhcpServer,
    this.secondaryAddress,
    this.virtualAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'dhcpRelay': ?pulumi.Input.mapOptionalInputValue<MagicTransitSiteLanStaticAddressingDhcpRelay, Map<String, dynamic>>(dhcpRelay, (value) => value.toMap()),
      'dhcpServer': ?pulumi.Input.mapOptionalInputValue<MagicTransitSiteLanStaticAddressingDhcpServer, Map<String, dynamic>>(dhcpServer, (value) => value.toMap()),
      'secondaryAddress': ?secondaryAddress,
      'virtualAddress': ?virtualAddress,
    };
  }

  factory MagicTransitSiteLanStaticAddressing.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteLanStaticAddressing(
      address: pulumi.Input.fromValue(map['address'] as String),
      dhcpRelay: (() { final guardedValue = map['dhcpRelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicTransitSiteLanStaticAddressingDhcpRelay.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dhcpServer: (() { final guardedValue = map['dhcpServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicTransitSiteLanStaticAddressingDhcpServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryAddress: (() { final guardedValue = map['secondaryAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualAddress: (() { final guardedValue = map['virtualAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
