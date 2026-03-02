// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NetworkDeviceData provides network-related details for the allocated device. This information may be filled by drivers or other components to configure or identify the device within a network context.
class NetworkDeviceDataResourceK8sIoV1beta2 {
  /// HardwareAddress represents the hardware address (e.g. MAC Address) of the device's network interface.
  ///
  /// Must not be longer than 128 characters.
  final pulumi.Input<String>? hardwareAddress;
  /// InterfaceName specifies the name of the network interface associated with the allocated device. This might be the name of a physical or virtual network interface being configured in the pod.
  ///
  /// Must not be longer than 256 characters.
  final pulumi.Input<String>? interfaceName;
  /// IPs lists the network addresses assigned to the device's network interface. This can include both IPv4 and IPv6 addresses. The IPs are in the CIDR notation, which includes both the address and the associated subnet mask. e.g.: "192.0.2.5/24" for IPv4 and "2001:db8::5/64" for IPv6.
  final pulumi.Input<List<String>>? ips;

  /// Creates a new [NetworkDeviceDataResourceK8sIoV1beta2].
  /// [hardwareAddress] HardwareAddress represents the hardware address (e.g. MAC Address) of the device's network interface.
  /// [interfaceName] InterfaceName specifies the name of the network interface associated with the allocated device. This might be the name of a physical or virtual network interface being configured in the pod.
  /// [ips] IPs lists the network addresses assigned to the device's network interface. This can include both IPv4 and IPv6 addresses. The IPs are in the CIDR notation, which includes both the address and the associated subnet mask. e.g.: "192.0.2.5/24" for IPv4 and "2001:db8::5/64" for IPv6.
  NetworkDeviceDataResourceK8sIoV1beta2({
    this.hardwareAddress,
    this.interfaceName,
    this.ips,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hardwareAddress': ?hardwareAddress,
      'interfaceName': ?interfaceName,
      'ips': ?ips,
    };
  }

  factory NetworkDeviceDataResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return NetworkDeviceDataResourceK8sIoV1beta2(
      hardwareAddress: map['hardwareAddress'] == null ? null : (map['hardwareAddress'] as String).input(),
      interfaceName: map['interfaceName'] == null ? null : (map['interfaceName'] as String).input(),
      ips: map['ips'] == null ? null : ((map['ips'] as List).cast<String>()).input(),
    );
  }
}

