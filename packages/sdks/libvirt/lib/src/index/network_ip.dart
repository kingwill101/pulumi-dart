// ignore_for_file: unused_element, unnecessary_cast

import 'network_ip_dhcp.dart';
import 'network_ip_tftp.dart';

class NetworkIp {
  /// Sets the specific IP address for the associated configuration.
  final String? address;
  /// Enables and configures DHCP settings for the network.
  final NetworkIpDhcp? dhcp;
  /// Determines the IP family (IPv4 or IPv6) for the network configuration.
  final String? family;
  /// Configures the local pointer for the IP address, used in DNS resolution.
  final String? localPtr;
  /// Specifies the subnet mask for the IP address configuration.
  final String? netmask;
  /// Sets the prefix length for CIDR notation in the network's IP configuration.
  final double? prefix;
  /// Configures TFTP settings for the network.
  final NetworkIpTftp? tftp;

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
      'dhcp': ?dhcp == null ? null : dhcp!.toMap(),
      'family': ?family,
      'localPtr': ?localPtr,
      'netmask': ?netmask,
      'prefix': ?prefix,
      'tftp': ?tftp == null ? null : tftp!.toMap(),
    };
  }

  factory NetworkIp.fromMap(Map<String, dynamic> map) {
    return NetworkIp(
      address: map['address'] == null ? null : map['address'] as String,
      dhcp: map['dhcp'] == null ? null : NetworkIpDhcp.fromMap((map['dhcp'] as Map).cast<String, dynamic>()),
      family: map['family'] == null ? null : map['family'] as String,
      localPtr: map['localPtr'] == null ? null : map['localPtr'] as String,
      netmask: map['netmask'] == null ? null : map['netmask'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as double,
      tftp: map['tftp'] == null ? null : NetworkIpTftp.fromMap((map['tftp'] as Map).cast<String, dynamic>()),
    );
  }
}

