// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec_key_type_response.dart';
import 'rsa_key_type_response.dart';

/// Describes a "type" of key that may be used in a Certificate issued from a CaPool. Note that a single AllowedKeyType may refer to either a fully-qualified key algorithm, such as RSA 4096, or a family of key algorithms, such as any RSA key.
class AllowedKeyTypeResponse {
  /// Represents an allowed Elliptic Curve key type.
  final pulumi.Input<EcKeyTypeResponse> ellipticCurve;
  /// Represents an allowed RSA key type.
  final pulumi.Input<RsaKeyTypeResponse> rsa;

  /// Creates a new [AllowedKeyTypeResponse].
  /// [ellipticCurve] Represents an allowed Elliptic Curve key type.
  /// [rsa] Represents an allowed RSA key type.
  const AllowedKeyTypeResponse({
    required this.ellipticCurve,
    required this.rsa,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ellipticCurve': pulumi.Input.mapInputValue<EcKeyTypeResponse, Map<String, dynamic>>(ellipticCurve, (value) => value.toMap()),
      'rsa': pulumi.Input.mapInputValue<RsaKeyTypeResponse, Map<String, dynamic>>(rsa, (value) => value.toMap()),
    };
  }

  factory AllowedKeyTypeResponse.fromMap(Map<String, dynamic> map) {
    return AllowedKeyTypeResponse(
      ellipticCurve: pulumi.Input.fromValue(EcKeyTypeResponse.fromMap((map['ellipticCurve']! as Map).cast<String, dynamic>())),
      rsa: pulumi.Input.fromValue(RsaKeyTypeResponse.fromMap((map['rsa']! as Map).cast<String, dynamic>())),
    );
  }
}
