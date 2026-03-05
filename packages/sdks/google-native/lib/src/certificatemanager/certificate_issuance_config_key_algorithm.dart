/// Required. The key algorithm to use when generating the private key.
enum CertificateIssuanceConfigKeyAlgorithm {
  keyAlgorithmUnspecified("KEY_ALGORITHM_UNSPECIFIED"),
  rsa2048("RSA_2048"),
  ecdsaP256("ECDSA_P256");

  const CertificateIssuanceConfigKeyAlgorithm(this.wireValue);
  final String wireValue;

  static CertificateIssuanceConfigKeyAlgorithm fromValue(String value) {
    for (final item in CertificateIssuanceConfigKeyAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateIssuanceConfigKeyAlgorithm value: $value');
  }
}

