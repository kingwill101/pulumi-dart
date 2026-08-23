// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for MPEG Common Encryption (MPEG-CENC).
class MpegCommonEncryption {
  /// Specify the encryption scheme. Supported encryption schemes: - `cenc` - `cbcs`
  final pulumi.Input<String> scheme;

  /// Creates a new [MpegCommonEncryption].
  /// [scheme] Specify the encryption scheme. Supported encryption schemes: - `cenc` - `cbcs`
  const MpegCommonEncryption({
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheme': scheme,
    };
  }

  factory MpegCommonEncryption.fromMap(Map<String, dynamic> map) {
    return MpegCommonEncryption(
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
    );
  }
}
