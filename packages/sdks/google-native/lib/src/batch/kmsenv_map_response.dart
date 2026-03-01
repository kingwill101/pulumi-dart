// ignore_for_file: unused_element, unnecessary_cast


class KMSEnvMapResponse {
  /// The value of the cipherText response from the `encrypt` method.
  final String cipherText;
  /// The name of the KMS key that will be used to decrypt the cipher text.
  final String keyName;

  /// Creates a new [KMSEnvMapResponse].
  /// [cipherText] The value of the cipherText response from the `encrypt` method.
  /// [keyName] The name of the KMS key that will be used to decrypt the cipher text.
  KMSEnvMapResponse({
    required this.cipherText,
    required this.keyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipherText': cipherText,
      'keyName': keyName,
    };
  }

  factory KMSEnvMapResponse.fromMap(Map<String, dynamic> map) {
    return KMSEnvMapResponse(
      cipherText: map['cipherText'] as String,
      keyName: map['keyName'] as String,
    );
  }
}

