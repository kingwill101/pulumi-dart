// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates if encryption is enabled on virtual network and if VM without encryption is allowed in encrypted VNet.
class VirtualNetworkEncryption {
  /// Indicates if encryption is enabled on the virtual network.
  final pulumi.Input<bool> enabled;
  /// If the encrypted VNet allows VM that does not support encryption. This field is for future support, AllowUnencrypted is the only supported value at general availability.
  final pulumi.Input<String>? enforcement;

  /// Creates a new [VirtualNetworkEncryption].
  /// [enabled] Indicates if encryption is enabled on the virtual network.
  /// [enforcement] If the encrypted VNet allows VM that does not support encryption. This field is for future support, AllowUnencrypted is the only supported value at general availability.
  VirtualNetworkEncryption({
    required this.enabled,
    this.enforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'enforcement': ?enforcement,
    };
  }

  factory VirtualNetworkEncryption.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkEncryption(
      enabled: (map['enabled'] as bool).input(),
      enforcement: map['enforcement'] == null ? null : (map['enforcement'] as String).input(),
    );
  }
}

