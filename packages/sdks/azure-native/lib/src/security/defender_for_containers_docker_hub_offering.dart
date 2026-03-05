// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Defender for containers Docker Hub offering configurations
class DefenderForContainersDockerHubOffering {
  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersDockerHub'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [DefenderForContainersDockerHubOffering].
  /// [offeringType] The type of the security offering.
  DefenderForContainersDockerHubOffering({
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offeringType': offeringType,
    };
  }

  factory DefenderForContainersDockerHubOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersDockerHubOffering(
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}

