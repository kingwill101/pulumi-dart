// ignore_for_file: unused_element, unnecessary_cast


class GetBucketObjectCustomerEncryption {
  /// The encryption algorithm. Default: AES256
  final String encryptionAlgorithm;
  /// Base64 encoded customer supplied encryption key.
  final String encryptionKey;

  /// Creates a new [GetBucketObjectCustomerEncryption].
  /// [encryptionAlgorithm] The encryption algorithm. Default: AES256
  /// [encryptionKey] Base64 encoded customer supplied encryption key.
  GetBucketObjectCustomerEncryption({
    required this.encryptionAlgorithm,
    required this.encryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAlgorithm': encryptionAlgorithm,
      'encryptionKey': encryptionKey,
    };
  }

  factory GetBucketObjectCustomerEncryption.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectCustomerEncryption(
      encryptionAlgorithm: map['encryptionAlgorithm'] as String,
      encryptionKey: map['encryptionKey'] as String,
    );
  }
}

