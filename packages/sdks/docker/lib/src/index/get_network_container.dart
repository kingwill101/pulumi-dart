// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkContainer {
  /// The container id.
  final pulumi.Input<String> containerId;
  /// The endpoint id.
  final pulumi.Input<String> endpointId;
  /// The IPv4 address.
  final pulumi.Input<String> ipv4Address;
  /// The IPv6 address.
  final pulumi.Input<String> ipv6Address;
  /// The MAC address.
  final pulumi.Input<String> macAddress;
  /// The container name.
  final pulumi.Input<String> name;

  /// Creates a new [GetNetworkContainer].
  /// [containerId] The container id.
  /// [endpointId] The endpoint id.
  /// [ipv4Address] The IPv4 address.
  /// [ipv6Address] The IPv6 address.
  /// [macAddress] The MAC address.
  /// [name] The container name.
  const GetNetworkContainer({
    required this.containerId,
    required this.endpointId,
    required this.ipv4Address,
    required this.ipv6Address,
    required this.macAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerId': containerId,
      'endpointId': endpointId,
      'ipv4Address': ipv4Address,
      'ipv6Address': ipv6Address,
      'macAddress': macAddress,
      'name': name,
    };
  }

  factory GetNetworkContainer.fromMap(Map<String, dynamic> map) {
    return GetNetworkContainer(
      containerId: pulumi.Input.fromValue(map['containerId'] as String),
      endpointId: pulumi.Input.fromValue(map['endpointId'] as String),
      ipv4Address: pulumi.Input.fromValue(map['ipv4Address'] as String),
      ipv6Address: pulumi.Input.fromValue(map['ipv6Address'] as String),
      macAddress: pulumi.Input.fromValue(map['macAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
