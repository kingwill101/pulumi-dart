// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NetworkInterface represents a NIC of a VM.
class NetworkInterfaceVmmigrationV1alpha1 {
  /// The external IP to define in the NIC.
  final pulumi.Input<String>? externalIp;
  /// The internal IP to define in the NIC. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  final pulumi.Input<String>? internalIp;
  /// The network to connect the NIC to.
  final pulumi.Input<String>? network;
  /// The subnetwork to connect the NIC to.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [NetworkInterfaceVmmigrationV1alpha1].
  /// [externalIp] The external IP to define in the NIC.
  /// [internalIp] The internal IP to define in the NIC. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  /// [network] The network to connect the NIC to.
  /// [subnetwork] The subnetwork to connect the NIC to.
  const NetworkInterfaceVmmigrationV1alpha1({
    this.externalIp,
    this.internalIp,
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': ?externalIp,
      'internalIp': ?internalIp,
      'network': ?network,
      'subnetwork': ?subnetwork,
    };
  }

  factory NetworkInterfaceVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceVmmigrationV1alpha1(
      externalIp: (() { final guardedValue = map['externalIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalIp: (() { final guardedValue = map['internalIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
