// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an Elliptic Curve key that may be used in a Certificate issued from a CaPool.
class EcKeyTypeResponse {
  /// Optional. A signature algorithm that must be used. If this is omitted, any EC-based signature algorithm will be allowed.
  final pulumi.Input<String> signatureAlgorithm;

  /// Creates a new [EcKeyTypeResponse].
  /// [signatureAlgorithm] Optional. A signature algorithm that must be used. If this is omitted, any EC-based signature algorithm will be allowed.
  EcKeyTypeResponse({required this.signatureAlgorithm});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'signatureAlgorithm': signatureAlgorithm};
  }

  factory EcKeyTypeResponse.fromMap(Map<String, dynamic> map) {
    return EcKeyTypeResponse(
      signatureAlgorithm: pulumi.Input.fromValue(
        map['signatureAlgorithm'] as String,
      ),
    );
  }
}
