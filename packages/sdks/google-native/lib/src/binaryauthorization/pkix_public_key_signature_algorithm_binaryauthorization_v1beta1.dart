/// The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in `public_key_pem` (i.e. this algorithm must match that of the public key).
enum PkixPublicKeySignatureAlgorithmBinaryauthorizationV1beta1 {
  signatureAlgorithmUnspecified("SIGNATURE_ALGORITHM_UNSPECIFIED"),
  rsaPss2048Sha256("RSA_PSS_2048_SHA256"),
  rsaSignPss2048Sha256("RSA_SIGN_PSS_2048_SHA256"),
  rsaPss3072Sha256("RSA_PSS_3072_SHA256"),
  rsaSignPss3072Sha256("RSA_SIGN_PSS_3072_SHA256"),
  rsaPss4096Sha256("RSA_PSS_4096_SHA256"),
  rsaSignPss4096Sha256("RSA_SIGN_PSS_4096_SHA256"),
  rsaPss4096Sha512("RSA_PSS_4096_SHA512"),
  rsaSignPss4096Sha512("RSA_SIGN_PSS_4096_SHA512"),
  rsaSignPkcs12048Sha256("RSA_SIGN_PKCS1_2048_SHA256"),
  rsaSignPkcs13072Sha256("RSA_SIGN_PKCS1_3072_SHA256"),
  rsaSignPkcs14096Sha256("RSA_SIGN_PKCS1_4096_SHA256"),
  rsaSignPkcs14096Sha512("RSA_SIGN_PKCS1_4096_SHA512"),
  ecdsaP256Sha256("ECDSA_P256_SHA256"),
  ecSignP256Sha256("EC_SIGN_P256_SHA256"),
  ecdsaP384Sha384("ECDSA_P384_SHA384"),
  ecSignP384Sha384("EC_SIGN_P384_SHA384"),
  ecdsaP521Sha512("ECDSA_P521_SHA512"),
  ecSignP521Sha512("EC_SIGN_P521_SHA512");

  const PkixPublicKeySignatureAlgorithmBinaryauthorizationV1beta1(this.wireValue);
  final String wireValue;

  static PkixPublicKeySignatureAlgorithmBinaryauthorizationV1beta1 fromValue(String value) {
    for (final item in PkixPublicKeySignatureAlgorithmBinaryauthorizationV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PkixPublicKeySignatureAlgorithmBinaryauthorizationV1beta1 value: $value');
  }
}

