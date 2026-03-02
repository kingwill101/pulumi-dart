// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerNetworksAdvanced {
  /// The network aliases of the container in the specific network.
  final pulumi.Input<List<String>>? aliases;
  /// The IPV4 address of the container in the specific network.
  final pulumi.Input<String>? ipv4Address;
  /// The IPV6 address of the container in the specific network.
  final pulumi.Input<String>? ipv6Address;
  /// The MAC address of the container in the specific network.
  final pulumi.Input<String>? macAddress;
  /// The name or id of the network to use. You can use `name` or `id` attribute from a `docker.Network` resource.
  final pulumi.Input<String> name;

  /// Creates a new [ContainerNetworksAdvanced].
  /// [aliases] The network aliases of the container in the specific network.
  /// [ipv4Address] The IPV4 address of the container in the specific network.
  /// [ipv6Address] The IPV6 address of the container in the specific network.
  /// [macAddress] The MAC address of the container in the specific network.
  /// [name] The name or id of the network to use. You can use `name` or `id` attribute from a `docker.Network` resource.
  ContainerNetworksAdvanced({
    this.aliases,
    this.ipv4Address,
    this.ipv6Address,
    this.macAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'macAddress': ?macAddress,
      'name': name,
    };
  }

  factory ContainerNetworksAdvanced.fromMap(Map<String, dynamic> map) {
    return ContainerNetworksAdvanced(
      aliases: map['aliases'] == null ? null : ((map['aliases'] as List).cast<String>()).input(),
      ipv4Address: map['ipv4Address'] == null ? null : (map['ipv4Address'] as String).input(),
      ipv6Address: map['ipv6Address'] == null ? null : (map['ipv6Address'] as String).input(),
      macAddress: map['macAddress'] == null ? null : (map['macAddress'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

