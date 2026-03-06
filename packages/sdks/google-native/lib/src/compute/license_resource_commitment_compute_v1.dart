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
  const LicenseResourceCommitmentComputeV1({
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
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coresPerLicense: (() { final guardedValue = map['coresPerLicense']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      license: (() { final guardedValue = map['license']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

