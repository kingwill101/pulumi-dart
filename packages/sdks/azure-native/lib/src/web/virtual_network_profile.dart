// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification for using a Virtual Network.
class VirtualNetworkProfile {
  /// Resource id of the Virtual Network.
  final pulumi.Input<String> id;

  /// Subnet within the Virtual Network.
  final pulumi.Input<String>? subnet;

  /// Creates a new [VirtualNetworkProfile].
  /// [id] Resource id of the Virtual Network.
  /// [subnet] Subnet within the Virtual Network.
  VirtualNetworkProfile({required this.id, this.subnet});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'subnet': ?subnet};
  }

  factory VirtualNetworkProfile.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkProfile(
      id: pulumi.Input.fromValue(map['id'] as String),
      subnet: (() {
        final guardedValue = map['subnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
