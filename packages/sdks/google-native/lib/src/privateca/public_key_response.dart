// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A PublicKey describes a public key.
class PublicKeyResponse {
  /// The format of the public key.
  final pulumi.Input<String> format;
  /// A public key. The padding and encoding must match with the `KeyFormat` value specified for the `format` field.
  final pulumi.Input<String> key;

  /// Creates a new [PublicKeyResponse].
  /// [format] The format of the public key.
  /// [key] A public key. The padding and encoding must match with the `KeyFormat` value specified for the `format` field.
  const PublicKeyResponse({
    required this.format,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'key': key,
    };
  }

  factory PublicKeyResponse.fromMap(Map<String, dynamic> map) {
    return PublicKeyResponse(
      format: pulumi.Input.fromValue(map['format'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
