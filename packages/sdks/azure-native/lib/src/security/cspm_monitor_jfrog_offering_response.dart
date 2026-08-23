// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The CSPM (Cloud security posture management) monitoring for JFrog Artifactory offering
class CspmMonitorJFrogOfferingResponse {
  /// The offering description.
  final pulumi.Input<String> description;
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorJFrog'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [CspmMonitorJFrogOfferingResponse].
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  const CspmMonitorJFrogOfferingResponse({
    required this.description,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorJFrogOfferingResponse.fromMap(Map<String, dynamic> map) {
    return CspmMonitorJFrogOfferingResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}
