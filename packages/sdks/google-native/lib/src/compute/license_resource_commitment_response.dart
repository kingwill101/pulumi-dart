// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Commitment for a particular license resource.
class LicenseResourceCommitmentResponse {
  /// The number of licenses purchased.
  final pulumi.Input<String> amount;
  /// Specifies the core range of the instance for which this license applies.
  final pulumi.Input<String> coresPerLicense;
  /// Any applicable license URI.
  final pulumi.Input<String> license;

  /// Creates a new [LicenseResourceCommitmentResponse].
  /// [amount] The number of licenses purchased.
  /// [coresPerLicense] Specifies the core range of the instance for which this license applies.
  /// [license] Any applicable license URI.
  LicenseResourceCommitmentResponse({
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

  factory LicenseResourceCommitmentResponse.fromMap(Map<String, dynamic> map) {
    return LicenseResourceCommitmentResponse(
      amount: (map['amount'] as String).input(),
      coresPerLicense: (map['coresPerLicense'] as String).input(),
      license: (map['license'] as String).input(),
    );
  }
}

