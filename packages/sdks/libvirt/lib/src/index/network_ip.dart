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
  const NetworkIp({
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
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dhcp: (() { final guardedValue = map['dhcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkIpDhcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localPtr: (() { final guardedValue = map['localPtr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netmask: (() { final guardedValue = map['netmask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      tftp: (() { final guardedValue = map['tftp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkIpTftp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

