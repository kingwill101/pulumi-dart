// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerNetworkData {
  /// The network gateway of the container.
  final pulumi.Input<String>? gateway;
  /// The IPV6 address of the container.
  final pulumi.Input<String>? globalIpv6Address;
  /// The IPV6 prefix length address of the container.
  final pulumi.Input<int>? globalIpv6PrefixLength;
  /// The IP address of the container.
  final pulumi.Input<String>? ipAddress;
  /// The IP prefix length of the container.
  final pulumi.Input<int>? ipPrefixLength;
  /// The IPV6 gateway of the container.
  final pulumi.Input<String>? ipv6Gateway;
  /// The MAC address of the container.
  final pulumi.Input<String>? macAddress;
  /// The name of the network
  final pulumi.Input<String>? networkName;

  /// Creates a new [ContainerNetworkData].
  /// [gateway] The network gateway of the container.
  /// [globalIpv6Address] The IPV6 address of the container.
  /// [globalIpv6PrefixLength] The IPV6 prefix length address of the container.
  /// [ipAddress] The IP address of the container.
  /// [ipPrefixLength] The IP prefix length of the container.
  /// [ipv6Gateway] The IPV6 gateway of the container.
  /// [macAddress] The MAC address of the container.
  /// [networkName] The name of the network
  const ContainerNetworkData({
    this.gateway,
    this.globalIpv6Address,
    this.globalIpv6PrefixLength,
    this.ipAddress,
    this.ipPrefixLength,
    this.ipv6Gateway,
    this.macAddress,
    this.networkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateway': ?gateway,
      'globalIpv6Address': ?globalIpv6Address,
      'globalIpv6PrefixLength': ?globalIpv6PrefixLength,
      'ipAddress': ?ipAddress,
      'ipPrefixLength': ?ipPrefixLength,
      'ipv6Gateway': ?ipv6Gateway,
      'macAddress': ?macAddress,
      'networkName': ?networkName,
    };
  }

  factory ContainerNetworkData.fromMap(Map<String, dynamic> map) {
    return ContainerNetworkData(
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalIpv6Address: (() { final guardedValue = map['globalIpv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalIpv6PrefixLength: (() { final guardedValue = map['globalIpv6PrefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipPrefixLength: (() { final guardedValue = map['ipPrefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipv6Gateway: (() { final guardedValue = map['ipv6Gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkName: (() { final guardedValue = map['networkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

