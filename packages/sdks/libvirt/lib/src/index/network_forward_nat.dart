// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_forward_nat_address.dart';
import 'network_forward_nat_port.dart';

class NetworkForwardNat {
  /// Defines the addresses for NAT configuration.
  final pulumi.Input<List<NetworkForwardNatAddress>>? addresses;
  /// Configures whether IPv6 is used for NAT in the forwarding settings.
  final pulumi.Input<String>? ipv6;
  /// Defines the ports to be used in NAT configuration.
  final pulumi.Input<List<NetworkForwardNatPort>>? ports;

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
      'addresses': ?pulumi.Input.mapOptionalInputValue<List<NetworkForwardNatAddress>, List<Map<String, dynamic>>>(addresses, (value) => pulumi.Input.encodeList<NetworkForwardNatAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6': ?ipv6,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<NetworkForwardNatPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<NetworkForwardNatPort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkForwardNat.fromMap(Map<String, dynamic> map) {
    return NetworkForwardNat(
      addresses: map['addresses'] == null ? null : (pulumi.Input.decodeList<NetworkForwardNatAddress>(map['addresses']!, (value) => NetworkForwardNatAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipv6: map['ipv6'] == null ? null : (map['ipv6']! as String).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<NetworkForwardNatPort>(map['ports']!, (value) => NetworkForwardNatPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

