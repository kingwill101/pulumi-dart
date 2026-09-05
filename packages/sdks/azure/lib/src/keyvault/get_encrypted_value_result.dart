// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEncryptedValue.
class GetEncryptedValueResult {
  final String? algorithm;
  /// The Base64URL decoded string of `plainTextValue`. Because the API would remove padding characters of `plainTextValue` when encrypting, this attribute is useful to get the original value.
  final String? decodedPlainTextValue;
  final String? encryptedData;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? keyVaultKeyId;
  final String? plainTextValue;

  /// Creates a new [GetEncryptedValueResult].
  /// [algorithm] Optional.
  /// [decodedPlainTextValue] The Base64URL decoded string of `plainTextValue`. Because the API would remove padding characters of `plainTextValue` when encrypting, this attribute is useful to get the original value.
  /// [encryptedData] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultKeyId] Optional.
  /// [plainTextValue] Optional.
  const GetEncryptedValueResult({
    this.algorithm,
    this.decodedPlainTextValue,
    this.encryptedData,
    this.id,
    this.keyVaultKeyId,
    this.plainTextValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'decodedPlainTextValue': ?decodedPlainTextValue,
      'encryptedData': ?encryptedData,
      'id': ?id,
      'keyVaultKeyId': ?keyVaultKeyId,
      'plainTextValue': ?plainTextValue,
    };
  }

  factory GetEncryptedValueResult.fromMap(Map<String, dynamic> map) {
    return GetEncryptedValueResult(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      decodedPlainTextValue: (() { final guardedValue = map['decodedPlainTextValue']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptedData: (() { final guardedValue = map['encryptedData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plainTextValue: (() { final guardedValue = map['plainTextValue']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
