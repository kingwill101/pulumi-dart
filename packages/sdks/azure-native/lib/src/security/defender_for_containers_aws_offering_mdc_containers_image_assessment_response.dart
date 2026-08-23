// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Microsoft Defender container image assessment configuration
class DefenderForContainersAwsOfferingMdcContainersImageAssessmentResponse {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;
  /// Is Microsoft Defender container image assessment enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForContainersAwsOfferingMdcContainersImageAssessmentResponse].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is Microsoft Defender container image assessment enabled
  const DefenderForContainersAwsOfferingMdcContainersImageAssessmentResponse({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderForContainersAwsOfferingMdcContainersImageAssessmentResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingMdcContainersImageAssessmentResponse(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
