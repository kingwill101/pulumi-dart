// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerNetworksAdvanced {
  /// The network aliases of the container in the specific network.
  final pulumi.Input<List<String>?>? aliases;
  /// An array of driver options for the network endpoint, e.g. `opts1=value`. This is the equivalent to repeating `--driver-opt` for `docker run`.
  final pulumi.Input<List<String>?>? driverOpts;
  /// Gateway priority for this endpoint. The endpoint with the highest priority will provide the default gateway for the container. This is the equivalent to `--gw-priority` for `docker run`.
  final pulumi.Input<int?>? gwPriority;
  /// The IPV4 address of the container in the specific network.
  final pulumi.Input<String?>? ipv4Address;
  /// The IPV6 address of the container in the specific network.
  final pulumi.Input<String?>? ipv6Address;
  /// The link-local IPs of the container in the specific network. This is the equivalent to repeating `--link-local-ip` for `docker run`.
  final pulumi.Input<List<String>?>? linkLocalIps;
  /// The MAC address of the container in the specific network.
  final pulumi.Input<String?>? macAddress;
  /// The name or id of the network to use. You can use `name` or `id` attribute from a `docker.Network` resource.
  final pulumi.Input<String> name;

  /// Creates a new [ContainerNetworksAdvanced].
  /// [aliases] The network aliases of the container in the specific network.
  /// [driverOpts] An array of driver options for the network endpoint, e.g. `opts1=value`. This is the equivalent to repeating `--driver-opt` for `docker run`.
  /// [gwPriority] Gateway priority for this endpoint. The endpoint with the highest priority will provide the default gateway for the container. This is the equivalent to `--gw-priority` for `docker run`.
  /// [ipv4Address] The IPV4 address of the container in the specific network.
  /// [ipv6Address] The IPV6 address of the container in the specific network.
  /// [linkLocalIps] The link-local IPs of the container in the specific network. This is the equivalent to repeating `--link-local-ip` for `docker run`.
  /// [macAddress] The MAC address of the container in the specific network.
  /// [name] The name or id of the network to use. You can use `name` or `id` attribute from a `docker.Network` resource.
  const ContainerNetworksAdvanced({
    this.aliases,
    this.driverOpts,
    this.gwPriority,
    this.ipv4Address,
    this.ipv6Address,
    this.linkLocalIps,
    this.macAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'driverOpts': ?driverOpts,
      'gwPriority': ?gwPriority,
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'linkLocalIps': ?linkLocalIps,
      'macAddress': ?macAddress,
      'name': name,
    };
  }

  factory ContainerNetworksAdvanced.fromMap(Map<String, dynamic> map) {
    return ContainerNetworksAdvanced(
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      driverOpts: (() { final guardedValue = map['driverOpts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gwPriority: (() { final guardedValue = map['gwPriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ipv4Address: (() { final guardedValue = map['ipv4Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkLocalIps: (() { final guardedValue = map['linkLocalIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
