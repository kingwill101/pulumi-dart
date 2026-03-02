// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_osniccustomization.dart';
import 'nictype.dart';
import 'virtual_network.dart';

/// Virtual NIC model
class VirtualNic {
  /// guest OS customization for nic
  final pulumi.Input<GuestOSNICCustomization>? customization;
  /// NIC ip address
  final pulumi.Input<List<String>>? ipAddresses;
  /// NIC MAC address
  final pulumi.Input<String>? macAddress;
  /// Virtual Network
  final pulumi.Input<VirtualNetwork> network;
  /// NIC type
  final pulumi.Input<NICType> nicType;
  /// Is NIC powered on/off on boot
  final pulumi.Input<bool>? powerOnBoot;
  /// NIC id
  final pulumi.Input<String>? virtualNicId;

  /// Creates a new [VirtualNic].
  /// [customization] guest OS customization for nic
  /// [ipAddresses] NIC ip address
  /// [macAddress] NIC MAC address
  /// [network] Virtual Network
  /// [nicType] NIC type
  /// [powerOnBoot] Is NIC powered on/off on boot
  /// [virtualNicId] NIC id
  VirtualNic({
    this.customization,
    this.ipAddresses,
    this.macAddress,
    required this.network,
    required this.nicType,
    this.powerOnBoot,
    this.virtualNicId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customization': ?pulumi.Input.mapOptionalInputValue<GuestOSNICCustomization, Map<String, dynamic>>(customization, (value) => value.toMap()),
      'ipAddresses': ?ipAddresses,
      'macAddress': ?macAddress,
      'network': pulumi.Input.mapInputValue<VirtualNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'nicType': pulumi.Input.mapInputValue<NICType, String>(nicType, (value) => value.value),
      'powerOnBoot': ?powerOnBoot,
      'virtualNicId': ?virtualNicId,
    };
  }

  factory VirtualNic.fromMap(Map<String, dynamic> map) {
    return VirtualNic(
      customization: map['customization'] == null ? null : (GuestOSNICCustomization.fromMap((map['customization'] as Map).cast<String, dynamic>())).input(),
      ipAddresses: map['ipAddresses'] == null ? null : ((map['ipAddresses'] as List).cast<String>()).input(),
      macAddress: map['macAddress'] == null ? null : (map['macAddress'] as String).input(),
      network: (VirtualNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())).input(),
      nicType: (NICType.fromValue(map['nicType'] as String)).input(),
      powerOnBoot: map['powerOnBoot'] == null ? null : (map['powerOnBoot'] as bool).input(),
      virtualNicId: map['virtualNicId'] == null ? null : (map['virtualNicId'] as String).input(),
    );
  }
}

