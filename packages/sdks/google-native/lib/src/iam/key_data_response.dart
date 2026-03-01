// ignore_for_file: unused_element, unnecessary_cast


/// Represents a public key data along with its format.
class KeyDataResponse {
  /// The format of the key.
  final String format;
  /// The key data. The format of the key is represented by the format field.
  final String key;
  /// The specifications for the key.
  final String keySpec;
  /// Latest timestamp when this key is valid. Attempts to use this key after this time will fail. Only present if the key data represents a X.509 certificate.
  final String notAfterTime;
  /// Earliest timestamp when this key is valid. Attempts to use this key before this time will fail. Only present if the key data represents a X.509 certificate.
  final String notBeforeTime;

  /// Creates a new [KeyDataResponse].
  /// [format] The format of the key.
  /// [key] The key data. The format of the key is represented by the format field.
  /// [keySpec] The specifications for the key.
  /// [notAfterTime] Latest timestamp when this key is valid. Attempts to use this key after this time will fail. Only present if the key data represents a X.509 certificate.
  /// [notBeforeTime] Earliest timestamp when this key is valid. Attempts to use this key before this time will fail. Only present if the key data represents a X.509 certificate.
  KeyDataResponse({
    required this.format,
    required this.key,
    required this.keySpec,
    required this.notAfterTime,
    required this.notBeforeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'key': key,
      'keySpec': keySpec,
      'notAfterTime': notAfterTime,
      'notBeforeTime': notBeforeTime,
    };
  }

  factory KeyDataResponse.fromMap(Map<String, dynamic> map) {
    return KeyDataResponse(
      format: map['format'] as String,
      key: map['key'] as String,
      keySpec: map['keySpec'] as String,
      notAfterTime: map['notAfterTime'] as String,
      notBeforeTime: map['notBeforeTime'] as String,
    );
  }
}

