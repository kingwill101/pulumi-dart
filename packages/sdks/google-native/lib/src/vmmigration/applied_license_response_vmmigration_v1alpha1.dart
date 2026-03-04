// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppliedLicense holds the license data returned by adaptation module report.
class AppliedLicenseResponseVmmigrationV1alpha1 {
  /// The OS license returned from the adaptation module's report.
  final pulumi.Input<String> osLicense;

  /// The license type that was used in OS adaptation.
  final pulumi.Input<String> type;

  /// Creates a new [AppliedLicenseResponseVmmigrationV1alpha1].
  /// [osLicense] The OS license returned from the adaptation module's report.
  /// [type] The license type that was used in OS adaptation.
  AppliedLicenseResponseVmmigrationV1alpha1({
    required this.osLicense,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'osLicense': osLicense, 'type': type};
  }

  factory AppliedLicenseResponseVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppliedLicenseResponseVmmigrationV1alpha1(
      osLicense: pulumi.Input.fromValue(map['osLicense'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
