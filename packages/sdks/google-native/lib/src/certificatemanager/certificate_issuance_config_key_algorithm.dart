import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The key algorithm to use when generating the private key.
enum CertificateIssuanceConfigKeyAlgorithm implements pulumi.PulumiEnum<String> {
  keyAlgorithmUnspecified("KEY_ALGORITHM_UNSPECIFIED"),
  rsa2048("RSA_2048"),
  ecdsaP256("ECDSA_P256");

  const CertificateIssuanceConfigKeyAlgorithm(this.wireValue);
  @override
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
