// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The CSPM (Cloud security posture management) monitoring for Docker Hub offering
class CspmMonitorDockerHubOffering {
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorDockerHub'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [CspmMonitorDockerHubOffering].
  /// [offeringType] The type of the security offering.
  const CspmMonitorDockerHubOffering({
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorDockerHubOffering.fromMap(Map<String, dynamic> map) {
    return CspmMonitorDockerHubOffering(
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}

