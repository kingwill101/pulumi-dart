// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobConfigEncryptionMpegCenc {
  /// Specify the encryption scheme.
  final pulumi.Input<String> scheme;

  /// Creates a new [JobConfigEncryptionMpegCenc].
  /// [scheme] Specify the encryption scheme.
  JobConfigEncryptionMpegCenc({required this.scheme});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scheme': scheme};
  }

  factory JobConfigEncryptionMpegCenc.fromMap(Map<String, dynamic> map) {
    return JobConfigEncryptionMpegCenc(
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
    );
  }
}
