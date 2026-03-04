// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The CSPM (Cloud security posture management) monitoring for gitlab offering
class CspmMonitorGitLabOffering {
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorGitLab'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [CspmMonitorGitLabOffering].
  /// [offeringType] The type of the security offering.
  CspmMonitorGitLabOffering({required this.offeringType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'offeringType': offeringType};
  }

  factory CspmMonitorGitLabOffering.fromMap(Map<String, dynamic> map) {
    return CspmMonitorGitLabOffering(
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}
