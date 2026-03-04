// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Defender for Containers for JFrog Artifactory offering
class DefenderForContainersJFrogOfferingResponse {
  /// The offering description.
  final pulumi.Input<String> description;

  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersJFrog'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [DefenderForContainersJFrogOfferingResponse].
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  DefenderForContainersJFrogOfferingResponse({
    required this.description,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory DefenderForContainersJFrogOfferingResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefenderForContainersJFrogOfferingResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}
