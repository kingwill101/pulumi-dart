// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes values that are relevant in a CA certificate.
class CaOptionsResponse {
  /// Optional. Refers to the "CA" X.509 extension, which is a boolean value. When this value is missing, the extension will be omitted from the CA certificate.
  final pulumi.Input<bool> isCa;
  /// Optional. Refers to the path length restriction X.509 extension. For a CA certificate, this value describes the depth of subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. If this value is missing, the max path length will be omitted from the CA certificate.
  final pulumi.Input<int> maxIssuerPathLength;

  /// Creates a new [CaOptionsResponse].
  /// [isCa] Optional. Refers to the "CA" X.509 extension, which is a boolean value. When this value is missing, the extension will be omitted from the CA certificate.
  /// [maxIssuerPathLength] Optional. Refers to the path length restriction X.509 extension. For a CA certificate, this value describes the depth of subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. If this value is missing, the max path length will be omitted from the CA certificate.
  const CaOptionsResponse({
    required this.isCa,
    required this.maxIssuerPathLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCa': isCa,
      'maxIssuerPathLength': maxIssuerPathLength,
    };
  }

  factory CaOptionsResponse.fromMap(Map<String, dynamic> map) {
    return CaOptionsResponse(
      isCa: pulumi.Input.fromValue(map['isCa'] as bool),
      maxIssuerPathLength: pulumi.Input.fromValue(map['maxIssuerPathLength'] as int),
    );
  }
}

