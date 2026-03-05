// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEncryptedValue.
class GetEncryptedValueResult {
  final String algorithm;
  /// The Base64URL decoded string of `plain_text_value`. Because the API would remove padding characters of `plain_text_value` when encrypting, this attribute is useful to get the original value.
  final String decodedPlainTextValue;
  final String? encryptedData;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyVaultKeyId;
  final String? plainTextValue;

  /// Creates a new [GetEncryptedValueResult].
  /// [algorithm] Required.
  /// [decodedPlainTextValue] The Base64URL decoded string of `plain_text_value`. Because the API would remove padding characters of `plain_text_value` when encrypting, this attribute is useful to get the original value.
  /// [encryptedData] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultKeyId] Required.
  /// [plainTextValue] Optional.
  GetEncryptedValueResult({
    required this.algorithm,
    required this.decodedPlainTextValue,
    this.encryptedData,
    required this.id,
    required this.keyVaultKeyId,
    this.plainTextValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'decodedPlainTextValue': decodedPlainTextValue,
      'encryptedData': ?encryptedData,
      'id': id,
      'keyVaultKeyId': keyVaultKeyId,
      'plainTextValue': ?plainTextValue,
    };
  }

  factory GetEncryptedValueResult.fromMap(Map<String, dynamic> map) {
    return GetEncryptedValueResult(
      algorithm: map['algorithm'] as String,
      decodedPlainTextValue: map['decodedPlainTextValue'] as String,
      encryptedData: (() { final guardedValue = map['encryptedData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      keyVaultKeyId: map['keyVaultKeyId'] as String,
      plainTextValue: (() { final guardedValue = map['plainTextValue']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

