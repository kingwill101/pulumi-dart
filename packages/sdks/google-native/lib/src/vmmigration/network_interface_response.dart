// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NetworkInterface represents a NIC of a VM.
class NetworkInterfaceResponse {
  /// The external IP to define in the NIC.
  final pulumi.Input<String> externalIp;
  /// The internal IP to define in the NIC. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  final pulumi.Input<String> internalIp;
  /// The network to connect the NIC to.
  final pulumi.Input<String> network;
  /// The subnetwork to connect the NIC to.
  final pulumi.Input<String> subnetwork;

  /// Creates a new [NetworkInterfaceResponse].
  /// [externalIp] The external IP to define in the NIC.
  /// [internalIp] The internal IP to define in the NIC. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  /// [network] The network to connect the NIC to.
  /// [subnetwork] The subnetwork to connect the NIC to.
  const NetworkInterfaceResponse({
    required this.externalIp,
    required this.internalIp,
    required this.network,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': externalIp,
      'internalIp': internalIp,
      'network': network,
      'subnetwork': subnetwork,
    };
  }

  factory NetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResponse(
      externalIp: pulumi.Input.fromValue(map['externalIp'] as String),
      internalIp: pulumi.Input.fromValue(map['internalIp'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}
