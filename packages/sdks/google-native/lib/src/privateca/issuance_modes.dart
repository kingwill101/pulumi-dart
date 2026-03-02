// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool.
class IssuanceModes {
  /// Optional. When true, allows callers to create Certificates by specifying a CertificateConfig.
  final pulumi.Input<bool>? allowConfigBasedIssuance;
  /// Optional. When true, allows callers to create Certificates by specifying a CSR.
  final pulumi.Input<bool>? allowCsrBasedIssuance;

  /// Creates a new [IssuanceModes].
  /// [allowConfigBasedIssuance] Optional. When true, allows callers to create Certificates by specifying a CertificateConfig.
  /// [allowCsrBasedIssuance] Optional. When true, allows callers to create Certificates by specifying a CSR.
  IssuanceModes({
    this.allowConfigBasedIssuance,
    this.allowCsrBasedIssuance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowConfigBasedIssuance': ?allowConfigBasedIssuance,
      'allowCsrBasedIssuance': ?allowCsrBasedIssuance,
    };
  }

  factory IssuanceModes.fromMap(Map<String, dynamic> map) {
    return IssuanceModes(
      allowConfigBasedIssuance: map['allowConfigBasedIssuance'] == null ? null : (map['allowConfigBasedIssuance'] as bool).input(),
      allowCsrBasedIssuance: map['allowCsrBasedIssuance'] == null ? null : (map['allowCsrBasedIssuance'] as bool).input(),
    );
  }
}

