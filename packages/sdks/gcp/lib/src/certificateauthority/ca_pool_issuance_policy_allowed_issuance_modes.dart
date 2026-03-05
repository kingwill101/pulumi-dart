// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CaPoolIssuancePolicyAllowedIssuanceModes {
  /// When true, allows callers to create Certificates by specifying a CertificateConfig.
  final pulumi.Input<bool> allowConfigBasedIssuance;
  /// When true, allows callers to create Certificates by specifying a CSR.
  final pulumi.Input<bool> allowCsrBasedIssuance;

  /// Creates a new [CaPoolIssuancePolicyAllowedIssuanceModes].
  /// [allowConfigBasedIssuance] When true, allows callers to create Certificates by specifying a CertificateConfig.
  /// [allowCsrBasedIssuance] When true, allows callers to create Certificates by specifying a CSR.
  CaPoolIssuancePolicyAllowedIssuanceModes({
    required this.allowConfigBasedIssuance,
    required this.allowCsrBasedIssuance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowConfigBasedIssuance': allowConfigBasedIssuance,
      'allowCsrBasedIssuance': allowCsrBasedIssuance,
    };
  }

  factory CaPoolIssuancePolicyAllowedIssuanceModes.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicyAllowedIssuanceModes(
      allowConfigBasedIssuance: pulumi.Input.fromValue(map['allowConfigBasedIssuance'] as bool),
      allowCsrBasedIssuance: pulumi.Input.fromValue(map['allowCsrBasedIssuance'] as bool),
    );
  }
}

