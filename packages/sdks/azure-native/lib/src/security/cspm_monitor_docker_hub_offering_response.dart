// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The CSPM (Cloud security posture management) monitoring for Docker Hub offering
class CspmMonitorDockerHubOfferingResponse {
  /// The offering description.
  final pulumi.Input<String> description;

  /// The type of the security offering.
  /// Expected value is 'CspmMonitorDockerHub'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [CspmMonitorDockerHubOfferingResponse].
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  CspmMonitorDockerHubOfferingResponse({
    required this.description,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorDockerHubOfferingResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CspmMonitorDockerHubOfferingResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}
