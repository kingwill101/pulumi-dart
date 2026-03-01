// ignore_for_file: unused_element, unnecessary_cast


class ContainerNetworkData {
  /// The network gateway of the container.
  final String? gateway;
  /// The IPV6 address of the container.
  final String? globalIpv6Address;
  /// The IPV6 prefix length address of the container.
  final int? globalIpv6PrefixLength;
  /// The IP address of the container.
  final String? ipAddress;
  /// The IP prefix length of the container.
  final int? ipPrefixLength;
  /// The IPV6 gateway of the container.
  final String? ipv6Gateway;
  /// The MAC address of the container.
  final String? macAddress;
  /// The name of the network
  final String? networkName;

  /// Creates a new [ContainerNetworkData].
  /// [gateway] The network gateway of the container.
  /// [globalIpv6Address] The IPV6 address of the container.
  /// [globalIpv6PrefixLength] The IPV6 prefix length address of the container.
  /// [ipAddress] The IP address of the container.
  /// [ipPrefixLength] The IP prefix length of the container.
  /// [ipv6Gateway] The IPV6 gateway of the container.
  /// [macAddress] The MAC address of the container.
  /// [networkName] The name of the network
  ContainerNetworkData({
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
      gateway: map['gateway'] == null ? null : map['gateway'] as String,
      globalIpv6Address: map['globalIpv6Address'] == null ? null : map['globalIpv6Address'] as String,
      globalIpv6PrefixLength: map['globalIpv6PrefixLength'] == null ? null : map['globalIpv6PrefixLength'] as int,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipPrefixLength: map['ipPrefixLength'] == null ? null : map['ipPrefixLength'] as int,
      ipv6Gateway: map['ipv6Gateway'] == null ? null : map['ipv6Gateway'] as String,
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
      networkName: map['networkName'] == null ? null : map['networkName'] as String,
    );
  }
}

