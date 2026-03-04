/// Required. Immutable. The wrapping method to be used for incoming key material.
enum ImportJobImportMethod {
  importMethodUnspecified("IMPORT_METHOD_UNSPECIFIED"),
  rsaOaep3072Sha1Aes256("RSA_OAEP_3072_SHA1_AES_256"),
  rsaOaep4096Sha1Aes256("RSA_OAEP_4096_SHA1_AES_256"),
  rsaOaep3072Sha256Aes256("RSA_OAEP_3072_SHA256_AES_256"),
  rsaOaep4096Sha256Aes256("RSA_OAEP_4096_SHA256_AES_256"),
  rsaOaep3072Sha256("RSA_OAEP_3072_SHA256"),
  rsaOaep4096Sha256("RSA_OAEP_4096_SHA256");

  const ImportJobImportMethod(this.wireValue);
  final String wireValue;

  static ImportJobImportMethod fromValue(String value) {
    for (final item in ImportJobImportMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImportJobImportMethod value: $value');
  }
}
