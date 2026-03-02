// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec_key_type_signature_algorithm.dart';

/// Describes an Elliptic Curve key that may be used in a Certificate issued from a CaPool.
class EcKeyType {
  /// Optional. A signature algorithm that must be used. If this is omitted, any EC-based signature algorithm will be allowed.
  final pulumi.Input<EcKeyTypeSignatureAlgorithm>? signatureAlgorithm;

  /// Creates a new [EcKeyType].
  /// [signatureAlgorithm] Optional. A signature algorithm that must be used. If this is omitted, any EC-based signature algorithm will be allowed.
  EcKeyType({
    this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signatureAlgorithm': ?pulumi.Input.mapOptionalInputValue<EcKeyTypeSignatureAlgorithm, String>(signatureAlgorithm, (value) => value.value),
    };
  }

  factory EcKeyType.fromMap(Map<String, dynamic> map) {
    return EcKeyType(
      signatureAlgorithm: map['signatureAlgorithm'] == null ? null : (EcKeyTypeSignatureAlgorithm.fromValue(map['signatureAlgorithm']! as String)).input(),
    );
  }
}

