// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_ip_dhcp.dart';
import 'network_ip_tftp.dart';

class NetworkIp {
  /// Sets the specific IP address for the associated configuration.
  final pulumi.Input<String>? address;
  /// Enables and configures DHCP settings for the network.
  final pulumi.Input<NetworkIpDhcp>? dhcp;
  /// Determines the IP family (IPv4 or IPv6) for the network configuration.
  final pulumi.Input<String>? family;
  /// Configures the local pointer for the IP address, used in DNS resolution.
  final pulumi.Input<String>? localPtr;
  /// Specifies the subnet mask for the IP address configuration.
  final pulumi.Input<String>? netmask;
  /// Sets the prefix length for CIDR notation in the network's IP configuration.
  final pulumi.Input<double>? prefix;
  /// Configures TFTP settings for the network.
  final pulumi.Input<NetworkIpTftp>? tftp;

  /// Creates a new [NetworkIp].
  /// [address] Sets the specific IP address for the associated configuration.
  /// [dhcp] Enables and configures DHCP settings for the network.
  /// [family] Determines the IP family (IPv4 or IPv6) for the network configuration.
  /// [localPtr] Configures the local pointer for the IP address, used in DNS resolution.
  /// [netmask] Specifies the subnet mask for the IP address configuration.
  /// [prefix] Sets the prefix length for CIDR notation in the network's IP configuration.
  /// [tftp] Configures TFTP settings for the network.
  NetworkIp({
    this.address,
    this.dhcp,
    this.family,
    this.localPtr,
    this.netmask,
    this.prefix,
    this.tftp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'dhcp': ?pulumi.Input.mapOptionalInputValue<NetworkIpDhcp, Map<String, dynamic>>(dhcp, (value) => value.toMap()),
      'family': ?family,
      'localPtr': ?localPtr,
      'netmask': ?netmask,
      'prefix': ?prefix,
      'tftp': ?pulumi.Input.mapOptionalInputValue<NetworkIpTftp, Map<String, dynamic>>(tftp, (value) => value.toMap()),
    };
  }

  factory NetworkIp.fromMap(Map<String, dynamic> map) {
    return NetworkIp(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      dhcp: map['dhcp'] == null ? null : (NetworkIpDhcp.fromMap((map['dhcp'] as Map).cast<String, dynamic>())).input(),
      family: map['family'] == null ? null : (map['family'] as String).input(),
      localPtr: map['localPtr'] == null ? null : (map['localPtr'] as String).input(),
      netmask: map['netmask'] == null ? null : (map['netmask'] as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as double).input(),
      tftp: map['tftp'] == null ? null : (NetworkIpTftp.fromMap((map['tftp'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

