/// Optional. A signature algorithm that must be used. If this is omitted, any EC-based signature algorithm will be allowed.
enum EcKeyTypeSignatureAlgorithm {
  ecSignatureAlgorithmUnspecified("EC_SIGNATURE_ALGORITHM_UNSPECIFIED"),
  ecdsaP256("ECDSA_P256"),
  ecdsaP384("ECDSA_P384"),
  eddsa25519("EDDSA_25519");

  const EcKeyTypeSignatureAlgorithm(this.wireValue);
  final String wireValue;

  static EcKeyTypeSignatureAlgorithm fromValue(String value) {
    for (final item in EcKeyTypeSignatureAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EcKeyTypeSignatureAlgorithm value: $value');
  }
}

