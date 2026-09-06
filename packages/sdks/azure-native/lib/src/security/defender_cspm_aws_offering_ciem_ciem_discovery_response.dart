// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defender CSPM Permissions Management discovery configuration
class DefenderCspmAwsOfferingCiemCiemDiscoveryResponse {
  /// The cloud role ARN in AWS for Permissions Management discovery
  final pulumi.Input<String?>? cloudRoleArn;

  /// Creates a new [DefenderCspmAwsOfferingCiemCiemDiscoveryResponse].
  /// [cloudRoleArn] The cloud role ARN in AWS for Permissions Management discovery
  const DefenderCspmAwsOfferingCiemCiemDiscoveryResponse({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderCspmAwsOfferingCiemCiemDiscoveryResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingCiemCiemDiscoveryResponse(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
