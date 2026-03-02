// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_issuance_policy_allowed_key_type_elliptic_curve.dart';
import 'ca_pool_issuance_policy_allowed_key_type_rsa.dart';

class CaPoolIssuancePolicyAllowedKeyType {
  /// Represents an allowed Elliptic Curve key type.
  /// Structure is documented below.
  final pulumi.Input<CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve>? ellipticCurve;
  /// Describes an RSA key that may be used in a Certificate issued from a CaPool.
  /// Structure is documented below.
  final pulumi.Input<CaPoolIssuancePolicyAllowedKeyTypeRsa>? rsa;

  /// Creates a new [CaPoolIssuancePolicyAllowedKeyType].
  /// [ellipticCurve] Represents an allowed Elliptic Curve key type.
  /// [rsa] Describes an RSA key that may be used in a Certificate issued from a CaPool.
  CaPoolIssuancePolicyAllowedKeyType({
    this.ellipticCurve,
    this.rsa,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ellipticCurve': ?pulumi.Input.mapOptionalInputValue<CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve, Map<String, dynamic>>(ellipticCurve, (value) => value.toMap()),
      'rsa': ?pulumi.Input.mapOptionalInputValue<CaPoolIssuancePolicyAllowedKeyTypeRsa, Map<String, dynamic>>(rsa, (value) => value.toMap()),
    };
  }

  factory CaPoolIssuancePolicyAllowedKeyType.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicyAllowedKeyType(
      ellipticCurve: map['ellipticCurve'] == null ? null : (CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve.fromMap((map['ellipticCurve'] as Map).cast<String, dynamic>())).input(),
      rsa: map['rsa'] == null ? null : (CaPoolIssuancePolicyAllowedKeyTypeRsa.fromMap((map['rsa'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

