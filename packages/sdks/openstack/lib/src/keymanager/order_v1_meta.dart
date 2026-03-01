// ignore_for_file: unused_element, unnecessary_cast


class OrderV1Meta {
  /// Algorithm to use for key generation.
  final String algorithm;
  /// Bit lenght of key to be generated.
  final int bitLength;
  /// This is a UTC timestamp in ISO 8601 format YYYY-MM-DDTHH:MM:SSZ. If set, the secret will not be available after this time.
  final String? expiration;
  /// The mode to use for key generation.
  final String? mode;
  /// The name of the secret set by the user.
  final String? name;
  /// The media type for the content of the secrets payload. Must be one of `text/plain`, `text/plain;charset=utf-8`, `text/plain; charset=utf-8`, `application/octet-stream`, `application/pkcs8`.
  final String? payloadContentType;

  /// Creates a new [OrderV1Meta].
  /// [algorithm] Algorithm to use for key generation.
  /// [bitLength] Bit lenght of key to be generated.
  /// [expiration] This is a UTC timestamp in ISO 8601 format YYYY-MM-DDTHH:MM:SSZ. If set, the secret will not be available after this time.
  /// [mode] The mode to use for key generation.
  /// [name] The name of the secret set by the user.
  /// [payloadContentType] The media type for the content of the secrets payload. Must be one of `text/plain`, `text/plain;charset=utf-8`, `text/plain; charset=utf-8`, `application/octet-stream`, `application/pkcs8`.
  OrderV1Meta({
    required this.algorithm,
    required this.bitLength,
    this.expiration,
    this.mode,
    this.name,
    this.payloadContentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'bitLength': bitLength,
      'expiration': ?expiration,
      'mode': ?mode,
      'name': ?name,
      'payloadContentType': ?payloadContentType,
    };
  }

  factory OrderV1Meta.fromMap(Map<String, dynamic> map) {
    return OrderV1Meta(
      algorithm: map['algorithm'] as String,
      bitLength: map['bitLength'] as int,
      expiration: map['expiration'] == null ? null : map['expiration'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      payloadContentType: map['payloadContentType'] == null ? null : map['payloadContentType'] as String,
    );
  }
}

