// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Commitment for a particular license resource.
class LicenseResourceCommitmentResponseComputeBeta {
  /// The number of licenses purchased.
  final pulumi.Input<String> amount;
  /// Specifies the core range of the instance for which this license applies.
  final pulumi.Input<String> coresPerLicense;
  /// Any applicable license URI.
  final pulumi.Input<String> license;

  /// Creates a new [LicenseResourceCommitmentResponseComputeBeta].
  /// [amount] The number of licenses purchased.
  /// [coresPerLicense] Specifies the core range of the instance for which this license applies.
  /// [license] Any applicable license URI.
  const LicenseResourceCommitmentResponseComputeBeta({
    required this.amount,
    required this.coresPerLicense,
    required this.license,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'coresPerLicense': coresPerLicense,
      'license': license,
    };
  }

  factory LicenseResourceCommitmentResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return LicenseResourceCommitmentResponseComputeBeta(
      amount: pulumi.Input.fromValue(map['amount'] as String),
      coresPerLicense: pulumi.Input.fromValue(map['coresPerLicense'] as String),
      license: pulumi.Input.fromValue(map['license'] as String),
    );
  }
}
