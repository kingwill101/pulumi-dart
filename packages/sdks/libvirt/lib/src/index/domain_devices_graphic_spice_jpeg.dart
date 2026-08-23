// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicSpiceJpeg {
  /// Sets the JPEG compression quality for images sent via the Spice protocol.
  final pulumi.Input<String> compression;

  /// Creates a new [DomainDevicesGraphicSpiceJpeg].
  /// [compression] Sets the JPEG compression quality for images sent via the Spice protocol.
  const DomainDevicesGraphicSpiceJpeg({
    required this.compression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': compression,
    };
  }

  factory DomainDevicesGraphicSpiceJpeg.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceJpeg(
      compression: pulumi.Input.fromValue(map['compression'] as String),
    );
  }
}
