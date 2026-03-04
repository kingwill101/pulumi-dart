// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicSpiceZlib {
  /// Sets the compression level used for zlib in the Spice protocol.
  final pulumi.Input<String> compression;

  /// Creates a new [DomainDevicesGraphicSpiceZlib].
  /// [compression] Sets the compression level used for zlib in the Spice protocol.
  DomainDevicesGraphicSpiceZlib({required this.compression});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'compression': compression};
  }

  factory DomainDevicesGraphicSpiceZlib.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceZlib(
      compression: pulumi.Input.fromValue(map['compression'] as String),
    );
  }
}
