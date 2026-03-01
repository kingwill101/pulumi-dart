// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesGraphicSpiceJpeg {
  /// Sets the JPEG compression quality for images sent via the Spice protocol.
  final String compression;

  /// Creates a new [DomainDevicesGraphicSpiceJpeg].
  /// [compression] Sets the JPEG compression quality for images sent via the Spice protocol.
  DomainDevicesGraphicSpiceJpeg({
    required this.compression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': compression,
    };
  }

  factory DomainDevicesGraphicSpiceJpeg.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceJpeg(
      compression: map['compression'] as String,
    );
  }
}

