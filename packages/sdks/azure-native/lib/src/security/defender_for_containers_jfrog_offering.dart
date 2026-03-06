// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Defender for Containers for JFrog Artifactory offering
class DefenderForContainersJFrogOffering {
  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersJFrog'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [DefenderForContainersJFrogOffering].
  /// [offeringType] The type of the security offering.
  const DefenderForContainersJFrogOffering({
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offeringType': offeringType,
    };
  }

  factory DefenderForContainersJFrogOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersJFrogOffering(
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}

