// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Microsoft Defender Data Sensitivity discovery configuration
class DefenderCspmAwsOfferingDataSensitivityDiscoveryResponse {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String?>? cloudRoleArn;
  /// Is Microsoft Defender Data Sensitivity discovery enabled
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [DefenderCspmAwsOfferingDataSensitivityDiscoveryResponse].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is Microsoft Defender Data Sensitivity discovery enabled
  const DefenderCspmAwsOfferingDataSensitivityDiscoveryResponse({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderCspmAwsOfferingDataSensitivityDiscoveryResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingDataSensitivityDiscoveryResponse(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
