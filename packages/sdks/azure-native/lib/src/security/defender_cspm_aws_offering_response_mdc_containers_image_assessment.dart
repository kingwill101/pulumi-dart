// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Microsoft Defender container image assessment configuration
class DefenderCspmAwsOfferingResponseMdcContainersImageAssessment {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;
  /// Is Microsoft Defender container image assessment enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderCspmAwsOfferingResponseMdcContainersImageAssessment].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is Microsoft Defender container image assessment enabled
  DefenderCspmAwsOfferingResponseMdcContainersImageAssessment({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderCspmAwsOfferingResponseMdcContainersImageAssessment.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingResponseMdcContainersImageAssessment(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : (map['cloudRoleArn'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

