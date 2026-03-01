// ignore_for_file: unused_element, unnecessary_cast

import 'guest_osniccustomization.dart';
import 'nictype.dart';
import 'virtual_network.dart';

/// Virtual NIC model
class VirtualNic {
  /// guest OS customization for nic
  final GuestOSNICCustomization? customization;
  /// NIC ip address
  final List<String>? ipAddresses;
  /// NIC MAC address
  final String? macAddress;
  /// Virtual Network
  final VirtualNetwork network;
  /// NIC type
  final NICType nicType;
  /// Is NIC powered on/off on boot
  final bool? powerOnBoot;
  /// NIC id
  final String? virtualNicId;

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
      'customization': ?customization == null ? null : customization!.toMap(),
      'ipAddresses': ?ipAddresses,
      'macAddress': ?macAddress,
      'network': network.toMap(),
      'nicType': nicType.value,
      'powerOnBoot': ?powerOnBoot,
      'virtualNicId': ?virtualNicId,
    };
  }

  factory VirtualNic.fromMap(Map<String, dynamic> map) {
    return VirtualNic(
      customization: map['customization'] == null ? null : GuestOSNICCustomization.fromMap((map['customization'] as Map).cast<String, dynamic>()),
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
      network: VirtualNetwork.fromMap((map['network'] as Map).cast<String, dynamic>()),
      nicType: NICType.fromValue(map['nicType'] as String),
      powerOnBoot: map['powerOnBoot'] == null ? null : map['powerOnBoot'] as bool,
      virtualNicId: map['virtualNicId'] == null ? null : map['virtualNicId'] as String,
    );
  }
}

