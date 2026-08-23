// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModuleNetworkProfile {
  /// The private IPv4 address of the network interface. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<List<String>> networkInterfacePrivateIpAddresses;
  /// The ID of the subnet. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String> subnetId;

  /// Creates a new [ModuleNetworkProfile].
  /// [networkInterfacePrivateIpAddresses] The private IPv4 address of the network interface. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [subnetId] The ID of the subnet. Changing this forces a new Dedicated Hardware Security Module to be created.
  const ModuleNetworkProfile({
    required this.networkInterfacePrivateIpAddresses,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfacePrivateIpAddresses': networkInterfacePrivateIpAddresses,
      'subnetId': subnetId,
    };
  }

  factory ModuleNetworkProfile.fromMap(Map<String, dynamic> map) {
    return ModuleNetworkProfile(
      networkInterfacePrivateIpAddresses: pulumi.Input.fromValue((map['networkInterfacePrivateIpAddresses'] as List).cast<String>()),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
