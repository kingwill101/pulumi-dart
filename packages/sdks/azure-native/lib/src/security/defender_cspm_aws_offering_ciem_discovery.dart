// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defender CSPM Permissions Management discovery configuration
class DefenderCspmAwsOfferingCiemDiscovery {
  /// The cloud role ARN in AWS for Permissions Management discovery
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderCspmAwsOfferingCiemDiscovery].
  /// [cloudRoleArn] The cloud role ARN in AWS for Permissions Management discovery
  DefenderCspmAwsOfferingCiemDiscovery({this.cloudRoleArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cloudRoleArn': ?cloudRoleArn};
  }

  factory DefenderCspmAwsOfferingCiemDiscovery.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefenderCspmAwsOfferingCiemDiscovery(
      cloudRoleArn: (() {
        final guardedValue = map['cloudRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
