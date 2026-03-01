// ignore_for_file: unused_element, unnecessary_cast


/// A PublicKey describes a public key.
class PublicKeyResponse {
  /// The format of the public key.
  final String format;
  /// A public key. The padding and encoding must match with the `KeyFormat` value specified for the `format` field.
  final String key;

  /// Creates a new [PublicKeyResponse].
  /// [format] The format of the public key.
  /// [key] A public key. The padding and encoding must match with the `KeyFormat` value specified for the `format` field.
  PublicKeyResponse({
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
      format: map['format'] as String,
      key: map['key'] as String,
    );
  }
}

