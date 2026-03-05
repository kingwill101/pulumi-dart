// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Commitment for a particular license resource.
class LicenseResourceCommitment {
  /// The number of licenses purchased.
  final pulumi.Input<String>? amount;
  /// Specifies the core range of the instance for which this license applies.
  final pulumi.Input<String>? coresPerLicense;
  /// Any applicable license URI.
  final pulumi.Input<String>? license;

  /// Creates a new [LicenseResourceCommitment].
  /// [amount] The number of licenses purchased.
  /// [coresPerLicense] Specifies the core range of the instance for which this license applies.
  /// [license] Any applicable license URI.
  LicenseResourceCommitment({
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

  factory LicenseResourceCommitment.fromMap(Map<String, dynamic> map) {
    return LicenseResourceCommitment(
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coresPerLicense: (() { final guardedValue = map['coresPerLicense']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      license: (() { final guardedValue = map['license']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

