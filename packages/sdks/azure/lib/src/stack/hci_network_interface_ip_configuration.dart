// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HciNetworkInterfaceIpConfiguration {
  /// The IPv4 address of the gateway for the Network Interface.
  final pulumi.Input<String>? gateway;
  /// The prefix length for the address of the Network Interface.
  final pulumi.Input<String>? prefixLength;
  /// The IPv4 address of the IP configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? privateIpAddress;
  /// The resource ID of the Stack HCI Logical Network bound to the IP configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;

  /// Creates a new [HciNetworkInterfaceIpConfiguration].
  /// [gateway] The IPv4 address of the gateway for the Network Interface.
  /// [prefixLength] The prefix length for the address of the Network Interface.
  /// [privateIpAddress] The IPv4 address of the IP configuration. Changing this forces a new resource to be created.
  /// [subnetId] The resource ID of the Stack HCI Logical Network bound to the IP configuration. Changing this forces a new resource to be created.
  HciNetworkInterfaceIpConfiguration({
    this.gateway,
    this.prefixLength,
    this.privateIpAddress,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateway': ?gateway,
      'prefixLength': ?prefixLength,
      'privateIpAddress': ?privateIpAddress,
      'subnetId': subnetId,
    };
  }

  factory HciNetworkInterfaceIpConfiguration.fromMap(Map<String, dynamic> map) {
    return HciNetworkInterfaceIpConfiguration(
      gateway: map['gateway'] == null ? null : (map['gateway']! as String).input(),
      prefixLength: map['prefixLength'] == null ? null : (map['prefixLength']! as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress']! as String).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

