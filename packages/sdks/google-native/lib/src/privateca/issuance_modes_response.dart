// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool.
class IssuanceModesResponse {
  /// Optional. When true, allows callers to create Certificates by specifying a CertificateConfig.
  final pulumi.Input<bool> allowConfigBasedIssuance;
  /// Optional. When true, allows callers to create Certificates by specifying a CSR.
  final pulumi.Input<bool> allowCsrBasedIssuance;

  /// Creates a new [IssuanceModesResponse].
  /// [allowConfigBasedIssuance] Optional. When true, allows callers to create Certificates by specifying a CertificateConfig.
  /// [allowCsrBasedIssuance] Optional. When true, allows callers to create Certificates by specifying a CSR.
  const IssuanceModesResponse({
    required this.allowConfigBasedIssuance,
    required this.allowCsrBasedIssuance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowConfigBasedIssuance': allowConfigBasedIssuance,
      'allowCsrBasedIssuance': allowCsrBasedIssuance,
    };
  }

  factory IssuanceModesResponse.fromMap(Map<String, dynamic> map) {
    return IssuanceModesResponse(
      allowConfigBasedIssuance: pulumi.Input.fromValue(map['allowConfigBasedIssuance'] as bool),
      allowCsrBasedIssuance: pulumi.Input.fromValue(map['allowCsrBasedIssuance'] as bool),
    );
  }
}

