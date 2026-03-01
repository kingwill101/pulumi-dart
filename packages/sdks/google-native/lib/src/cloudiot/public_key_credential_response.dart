// ignore_for_file: unused_element, unnecessary_cast


/// A public key format and data.
class PublicKeyCredentialResponse {
  /// The format of the key.
  final String format;
  /// The key data.
  final String key;

  /// Creates a new [PublicKeyCredentialResponse].
  /// [format] The format of the key.
  /// [key] The key data.
  PublicKeyCredentialResponse({
    required this.format,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'key': key,
    };
  }

  factory PublicKeyCredentialResponse.fromMap(Map<String, dynamic> map) {
    return PublicKeyCredentialResponse(
      format: map['format'] as String,
      key: map['key'] as String,
    );
  }
}

