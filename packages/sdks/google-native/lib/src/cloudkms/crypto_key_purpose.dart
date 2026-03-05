/// Immutable. The immutable purpose of this CryptoKey.
enum CryptoKeyPurpose {
  cryptoKeyPurposeUnspecified("CRYPTO_KEY_PURPOSE_UNSPECIFIED"),
  encryptDecrypt("ENCRYPT_DECRYPT"),
  asymmetricSign("ASYMMETRIC_SIGN"),
  asymmetricDecrypt("ASYMMETRIC_DECRYPT"),
  rawEncryptDecrypt("RAW_ENCRYPT_DECRYPT"),
  mac("MAC");

  const CryptoKeyPurpose(this.wireValue);
  final String wireValue;

  static CryptoKeyPurpose fromValue(String value) {
    for (final item in CryptoKeyPurpose.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CryptoKeyPurpose value: $value');
  }
}

