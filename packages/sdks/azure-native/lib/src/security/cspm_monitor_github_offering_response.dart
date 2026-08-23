// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The CSPM monitoring for github offering
class CspmMonitorGithubOfferingResponse {
  /// The offering description.
  final pulumi.Input<String> description;
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorGithub'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [CspmMonitorGithubOfferingResponse].
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  const CspmMonitorGithubOfferingResponse({
    required this.description,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorGithubOfferingResponse.fromMap(Map<String, dynamic> map) {
    return CspmMonitorGithubOfferingResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}
