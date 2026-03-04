// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Defender for CSPM Docker Hub offering configurations
class DefenderCspmDockerHubOfferingResponse {
  /// The offering description.
  final pulumi.Input<String> description;

  /// The type of the security offering.
  /// Expected value is 'DefenderCspmDockerHub'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [DefenderCspmDockerHubOfferingResponse].
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  DefenderCspmDockerHubOfferingResponse({
    required this.description,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory DefenderCspmDockerHubOfferingResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefenderCspmDockerHubOfferingResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}
