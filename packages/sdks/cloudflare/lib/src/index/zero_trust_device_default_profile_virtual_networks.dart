// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDeviceDefaultProfileVirtualNetworks {
  /// List of virtual network IDs the device is allowed to access. When virtualNetworks is set, at least one entry is required.
  final pulumi.Input<List<String>> alloweds;
  /// The default virtual network ID. Must be included in the `allowed` list.
  final pulumi.Input<String> default_;

  /// Creates a new [ZeroTrustDeviceDefaultProfileVirtualNetworks].
  /// [alloweds] List of virtual network IDs the device is allowed to access. When virtualNetworks is set, at least one entry is required.
  /// [default_] The default virtual network ID. Must be included in the `allowed` list.
  const ZeroTrustDeviceDefaultProfileVirtualNetworks({
    required this.alloweds,
    required this.default_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alloweds': alloweds,
      'default': default_,
    };
  }

  factory ZeroTrustDeviceDefaultProfileVirtualNetworks.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceDefaultProfileVirtualNetworks(
      alloweds: pulumi.Input.fromValue((map['alloweds'] as List).cast<String>()),
      default_: pulumi.Input.fromValue(map['default'] as String),
    );
  }
}
