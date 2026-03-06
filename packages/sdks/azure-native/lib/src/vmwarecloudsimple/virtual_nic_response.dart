// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_osniccustomization_response.dart';
import 'virtual_network_response.dart';

/// Virtual NIC model
class VirtualNicResponse {
  /// guest OS customization for nic
  final pulumi.Input<GuestOSNICCustomizationResponse>? customization;
  /// NIC ip address
  final pulumi.Input<List<String>>? ipAddresses;
  /// NIC MAC address
  final pulumi.Input<String>? macAddress;
  /// Virtual Network
  final pulumi.Input<VirtualNetworkResponse> network;
  /// NIC type
  final pulumi.Input<String> nicType;
  /// Is NIC powered on/off on boot
  final pulumi.Input<bool>? powerOnBoot;
  /// NIC id
  final pulumi.Input<String>? virtualNicId;
  /// NIC name
  final pulumi.Input<String> virtualNicName;

  /// Creates a new [VirtualNicResponse].
  /// [customization] guest OS customization for nic
  /// [ipAddresses] NIC ip address
  /// [macAddress] NIC MAC address
  /// [network] Virtual Network
  /// [nicType] NIC type
  /// [powerOnBoot] Is NIC powered on/off on boot
  /// [virtualNicId] NIC id
  /// [virtualNicName] NIC name
  const VirtualNicResponse({
    this.customization,
    this.ipAddresses,
    this.macAddress,
    required this.network,
    required this.nicType,
    this.powerOnBoot,
    this.virtualNicId,
    required this.virtualNicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customization': ?pulumi.Input.mapOptionalInputValue<GuestOSNICCustomizationResponse, Map<String, dynamic>>(customization, (value) => value.toMap()),
      'ipAddresses': ?ipAddresses,
      'macAddress': ?macAddress,
      'network': pulumi.Input.mapInputValue<VirtualNetworkResponse, Map<String, dynamic>>(network, (value) => value.toMap()),
      'nicType': nicType,
      'powerOnBoot': ?powerOnBoot,
      'virtualNicId': ?virtualNicId,
      'virtualNicName': virtualNicName,
    };
  }

  factory VirtualNicResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNicResponse(
      customization: (() { final guardedValue = map['customization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestOSNICCustomizationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(VirtualNetworkResponse.fromMap((map['network']! as Map).cast<String, dynamic>())),
      nicType: pulumi.Input.fromValue(map['nicType'] as String),
      powerOnBoot: (() { final guardedValue = map['powerOnBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      virtualNicId: (() { final guardedValue = map['virtualNicId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNicName: pulumi.Input.fromValue(map['virtualNicName'] as String),
    );
  }
}

