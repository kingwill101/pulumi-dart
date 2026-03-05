// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The CSPM (Cloud security posture management) monitoring for JFrog Artifactory offering
class CspmMonitorJFrogOffering {
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorJFrog'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [CspmMonitorJFrogOffering].
  /// [offeringType] The type of the security offering.
  CspmMonitorJFrogOffering({
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorJFrogOffering.fromMap(Map<String, dynamic> map) {
    return CspmMonitorJFrogOffering(
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}

