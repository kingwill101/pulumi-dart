/// The algorithm to use for creating a managed Cloud KMS key for a for a simplified experience. All managed keys will be have their ProtectionLevel as `HSM`.
enum KeyVersionSpecAlgorithm {
  signHashAlgorithmUnspecified("SIGN_HASH_ALGORITHM_UNSPECIFIED"),
  rsaPss2048Sha256("RSA_PSS_2048_SHA256"),
  rsaPss3072Sha256("RSA_PSS_3072_SHA256"),
  rsaPss4096Sha256("RSA_PSS_4096_SHA256"),
  rsaPkcs12048Sha256("RSA_PKCS1_2048_SHA256"),
  rsaPkcs13072Sha256("RSA_PKCS1_3072_SHA256"),
  rsaPkcs14096Sha256("RSA_PKCS1_4096_SHA256"),
  ecP256Sha256("EC_P256_SHA256"),
  ecP384Sha384("EC_P384_SHA384");

  const KeyVersionSpecAlgorithm(this.value);
  final String value;

  static KeyVersionSpecAlgorithm fromValue(String value) {
    for (final item in KeyVersionSpecAlgorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyVersionSpecAlgorithm value: $value');
  }
}

