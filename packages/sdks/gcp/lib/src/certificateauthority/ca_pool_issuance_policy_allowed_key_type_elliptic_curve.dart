// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve {
  /// The algorithm used.
  /// Possible values are: `ECDSA_P256`, `ECDSA_P384`, `EDDSA_25519`.
  final pulumi.Input<String> signatureAlgorithm;

  /// Creates a new [CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve].
  /// [signatureAlgorithm] The algorithm used.
  const CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve({
    required this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signatureAlgorithm': signatureAlgorithm,
    };
  }

  factory CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve(
      signatureAlgorithm: pulumi.Input.fromValue(map['signatureAlgorithm'] as String),
    );
  }
}

