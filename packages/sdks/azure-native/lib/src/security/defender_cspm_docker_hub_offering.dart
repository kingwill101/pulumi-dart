// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Defender for CSPM Docker Hub offering configurations
class DefenderCspmDockerHubOffering {
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmDockerHub'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [DefenderCspmDockerHubOffering].
  /// [offeringType] The type of the security offering.
  DefenderCspmDockerHubOffering({
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offeringType': offeringType,
    };
  }

  factory DefenderCspmDockerHubOffering.fromMap(Map<String, dynamic> map) {
    return DefenderCspmDockerHubOffering(
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}

