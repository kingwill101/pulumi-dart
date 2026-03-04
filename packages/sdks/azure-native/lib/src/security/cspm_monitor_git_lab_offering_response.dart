// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The CSPM (Cloud security posture management) monitoring for gitlab offering
class CspmMonitorGitLabOfferingResponse {
  /// The offering description.
  final pulumi.Input<String> description;

  /// The type of the security offering.
  /// Expected value is 'CspmMonitorGitLab'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [CspmMonitorGitLabOfferingResponse].
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  CspmMonitorGitLabOfferingResponse({
    required this.description,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorGitLabOfferingResponse.fromMap(Map<String, dynamic> map) {
    return CspmMonitorGitLabOfferingResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}
