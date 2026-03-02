// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Commitment for a particular license resource.
class LicenseResourceCommitmentComputeV1 {
  /// The number of licenses purchased.
  final pulumi.Input<String>? amount;
  /// Specifies the core range of the instance for which this license applies.
  final pulumi.Input<String>? coresPerLicense;
  /// Any applicable license URI.
  final pulumi.Input<String>? license;

  /// Creates a new [LicenseResourceCommitmentComputeV1].
  /// [amount] The number of licenses purchased.
  /// [coresPerLicense] Specifies the core range of the instance for which this license applies.
  /// [license] Any applicable license URI.
  LicenseResourceCommitmentComputeV1({
    this.amount,
    this.coresPerLicense,
    this.license,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'coresPerLicense': ?coresPerLicense,
      'license': ?license,
    };
  }

  factory LicenseResourceCommitmentComputeV1.fromMap(Map<String, dynamic> map) {
    return LicenseResourceCommitmentComputeV1(
      amount: map['amount'] == null ? null : (map['amount'] as String).input(),
      coresPerLicense: map['coresPerLicense'] == null ? null : (map['coresPerLicense'] as String).input(),
      license: map['license'] == null ? null : (map['license'] as String).input(),
    );
  }
}

