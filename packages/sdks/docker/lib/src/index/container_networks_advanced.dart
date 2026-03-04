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
      aliases: (() {
        final guardedValue = map['aliases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ipv4Address: (() {
        final guardedValue = map['ipv4Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6Address: (() {
        final guardedValue = map['ipv6Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      macAddress: (() {
        final guardedValue = map['macAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
