// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_forward_nat_address.dart';
import 'network_forward_nat_port.dart';

class NetworkForwardNat {
  /// Defines the addresses for NAT configuration.
  final List<NetworkForwardNatAddress>? addresses;
  /// Configures whether IPv6 is used for NAT in the forwarding settings.
  final String? ipv6;
  /// Defines the ports to be used in NAT configuration.
  final List<NetworkForwardNatPort>? ports;

  /// Creates a new [NetworkForwardNat].
  /// [addresses] Defines the addresses for NAT configuration.
  /// [ipv6] Configures whether IPv6 is used for NAT in the forwarding settings.
  /// [ports] Defines the ports to be used in NAT configuration.
  NetworkForwardNat({
    this.addresses,
    this.ipv6,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses == null ? null : pulumi.Input.encodeList<NetworkForwardNatAddress, Map<String, dynamic>>(addresses!, (value) => value.toMap()),
      'ipv6': ?ipv6,
      'ports': ?ports == null ? null : pulumi.Input.encodeList<NetworkForwardNatPort, Map<String, dynamic>>(ports!, (value) => value.toMap()),
    };
  }

  factory NetworkForwardNat.fromMap(Map<String, dynamic> map) {
    return NetworkForwardNat(
      addresses: map['addresses'] == null ? null : pulumi.Input.decodeList<NetworkForwardNatAddress>(map['addresses'], (value) => NetworkForwardNatAddress.fromMap((value as Map).cast<String, dynamic>())),
      ipv6: map['ipv6'] == null ? null : map['ipv6'] as String,
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<NetworkForwardNatPort>(map['ports'], (value) => NetworkForwardNatPort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

