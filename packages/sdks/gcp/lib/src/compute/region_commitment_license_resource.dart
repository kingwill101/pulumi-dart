// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionCommitmentLicenseResource {
  /// The number of licenses purchased.
  final pulumi.Input<String>? amount;
  /// Specifies the core range of the instance for which this license applies.
  final pulumi.Input<String>? coresPerLicense;
  /// Any applicable license URI.
  final pulumi.Input<String> license;

  /// Creates a new [RegionCommitmentLicenseResource].
  /// [amount] The number of licenses purchased.
  /// [coresPerLicense] Specifies the core range of the instance for which this license applies.
  /// [license] Any applicable license URI.
  RegionCommitmentLicenseResource({
    this.amount,
    this.coresPerLicense,
    required this.license,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'coresPerLicense': ?coresPerLicense,
      'license': license,
    };
  }

  factory RegionCommitmentLicenseResource.fromMap(Map<String, dynamic> map) {
    return RegionCommitmentLicenseResource(
      amount: map['amount'] == null ? null : (map['amount']! as String).input(),
      coresPerLicense: map['coresPerLicense'] == null ? null : (map['coresPerLicense']! as String).input(),
      license: (map['license'] as String).input(),
    );
  }
}

